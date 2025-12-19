import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'form_bloc.dart';
import 'form_field_type.dart';
import 'package:intl/intl.dart';

class BReactiveForm extends StatelessWidget {
  final BFormBloc bloc;
  final Widget Function(BuildContext, BFormFieldType) fieldBuilder;
  final Widget Function(BuildContext, Map<String, dynamic>)? formBuilder;
  final EdgeInsets? padding;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final bool shrinkWrap;

  const BReactiveForm({
    super.key,
    required this.bloc,
    required this.fieldBuilder,
    this.formBuilder,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    if (formBuilder != null) {
      return BlocBuilder<BFormBloc, BFormState>(
        bloc: bloc,
        builder: (context, state) {
          final formData = _getFormData(state.fields);
          return formBuilder!(context, formData);
        },
      );
    }

    return BlocBuilder<BFormBloc, BFormState>(
      bloc: bloc,
      builder: (context, state) {
        return Padding(
          padding: padding ?? const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            children: state.fields.map((field) {
              return _buildField(context, field);
            }).toList(),
          ),
        );
      },
    );
  }

  Widget _buildField(BuildContext context, BFormFieldType field) {
    final errorText = context.read<BFormBloc>().state.errors[field.name];
    
    if (!field.enabled) {
      return Opacity(
        opacity: 0.5,
        child: IgnorePointer(
          child: fieldBuilder(context, field),
        ),
      );
    }

    return fieldBuilder(context, field);
  }

  Map<String, dynamic> _getFormData(List<BFormFieldType> fields) {
    final formData = <String, dynamic>{};
    for (final field in fields) {
      formData[field.name] = field.initialValue;
    }
    return formData;
  }
}

class BFormTextField extends StatelessWidget {
  final BFormFieldType field;
  final ValueChanged<String?>? onChanged;
  final String? errorText;

  const BFormTextField({
    super.key,
    required this.field,
    this.onChanged,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return field.when(
      textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue,
              enabled: enabled ?? true,
              maxLength: maxLength,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                hintText: placeholder,
                errorText: errorText,
                helperText: helperText,
                border: const OutlineInputBorder(),
              ),
              onChanged: onChanged,
            ),
          ],
        );
      },
      textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue,
              enabled: enabled ?? true,
              maxLines: maxLines,
              maxLength: maxLength,
              decoration: InputDecoration(
                hintText: placeholder,
                errorText: errorText,
                helperText: helperText,
                border: const OutlineInputBorder(),
              ),
              onChanged: onChanged,
            ),
          ],
        );
      },
      dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            DropdownButtonFormField<String>(
              value: initialValue,
              decoration: InputDecoration(
                hintText: helperText,
                errorText: errorText,
                border: const OutlineInputBorder(),
              ),
              items: options.map((option) {
                return DropdownMenuItem<String>(
                  value: option.value,
                  child: Text(option.label),
                );
              }).toList(),
              onChanged: (value) => onChanged?.call(value),
            ),
          ],
        );
      },
      checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return CheckboxListTile(
          title: Text(label),
          value: initialValue ?? false,
          enabled: enabled ?? true,
          onChanged: (value) => onChanged?.call(value?.toString()),
        );
      },
      radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            ...options.map((option) {
              return RadioListTile<String>(
                title: Text(option.label),
                value: option.value,
                groupValue: initialValue,
                enabled: enabled ?? true,
                onChanged: (value) => onChanged?.call(value),
              );
            }),
          ],
        );
      },
      switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return SwitchListTile(
          title: Text(label),
          value: initialValue ?? false,
          enabled: enabled ?? true,
          onChanged: (value) => onChanged?.call(value?.toString()),
        );
      },
      datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: (enabled ?? true) != null ? () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: initialValue != null ? DateTime.tryParse(initialValue!) ?? DateTime.now() : DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2100),
                );
                if (date != null) {
                  onChanged?.call(date.toIso8601String());
                }
              } : null,
              child: InputDecorator(
                decoration: InputDecoration(
                  hintText: helperText,
                  errorText: errorText,
                  border: const OutlineInputBorder(),
                  suffixIcon: const Icon(Icons.calendar_today),
                ),
                child: Text(
                  initialValue != null 
                    ? DateFormat('yyyy-MM-dd').format(DateTime.parse(initialValue!))
                    : 'Select date',
                ),
              ),
            ),
          ],
        );
      },
      numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue?.toString(),
              enabled: enabled ?? true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: helperText,
                errorText: errorText,
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) {
                final numValue = num.tryParse(value);
                onChanged?.call(numValue?.toString());
              },
            ),
          ],
        );
      },
      email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue,
              enabled: enabled ?? true,
              maxLength: maxLength,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: placeholder,
                errorText: errorText,
                helperText: helperText,
                border: const OutlineInputBorder(),
              ),
              onChanged: onChanged,
            ),
          ],
        );
      },
      password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue,
              enabled: enabled ?? true,
              maxLength: maxLength,
              obscureText: true,
              decoration: InputDecoration(
                hintText: placeholder,
                errorText: errorText,
                helperText: helperText,
                border: const OutlineInputBorder(),
              ),
              onChanged: onChanged,
            ),
          ],
        );
      },
      phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            TextFormField(
              initialValue: initialValue,
              enabled: enabled ?? true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: placeholder,
                errorText: errorText,
                helperText: helperText,
                border: const OutlineInputBorder(),
              ),
              onChanged: onChanged,
            ),
          ],
        );
      },
      fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: enabled ?? true ? () {
                // TODO: Implement file upload
              } : null,
              child: Text('Upload $label'),
            ),
          ],
        );
      },
      custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text('Custom field: $type'),
            ),
          ],
        );
      },
    );
  }
}