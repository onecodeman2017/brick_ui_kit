import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'form_field_type.dart';

/// Simple Reactive Form Widget that accepts configuration
class BReactiveForm extends StatelessWidget {
  final FormGroup formGroup;
  final List<BFormFieldType> fields;
  final Map<String, ValidationMessageFunction>? validationMessages;
  final VoidCallback? onSubmit;

  const BReactiveForm({
    super.key,
    required this.formGroup,
    required this.fields,
    this.validationMessages,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: formGroup,
      validationMessages: validationMessages ?? {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final field in fields) ...[
            _buildField(field),
            const SizedBox(height: 16),
          ],
          if (onSubmit != null) ...[
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (formGroup.valid) {
                    onSubmit?.call();
                  } else {
                    formGroup.markAllAsTouched();
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildField(BFormFieldType fieldType) {
    return fieldType.map(
      textField: (config) => _buildTextField(config),
      textArea: (config) => _buildTextArea(config),
      dropdown: (config) => _buildDropdown(config),
      checkbox: (config) => _buildCheckbox(config),
      radioGroup: (config) => _buildRadioGroup(config),
      switchField: (config) => _buildSwitch(config),
      datePicker: (config) => _buildDatePicker(config),
      numberField: (config) => _buildNumberField(config),
      email: (config) => _buildEmail(config),
      password: (config) => _buildPassword(config),
      phone: (config) => _buildPhone(config),
      fileUpload: (config) => _buildFileUpload(config),
      custom: (config) => _buildCustom(config),
    );
  }

  Widget _buildTextField(BTextFieldType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          keyboardType: config.keyboardType,
          decoration: InputDecoration(
            labelText: config.label,
            hintText: config.placeholder,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            return null;
          },
          onChanged: (value) {
            field.value = value;
          },
        );
      },
    );
  }

  Widget _buildTextArea(BTextAreaType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          maxLines: config.maxLines ?? 3,
          decoration: InputDecoration(
            labelText: config.label,
            hintText: config.placeholder,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            return null;
          },
          onChanged: (value) {
            field.value = value;
          },
        );
      },
    );
  }

  Widget _buildDropdown(BDropdownType config) {
    return ReactiveDropdownField<String>(
      formControlName: config.name,
      items: config.options.map((option) => DropdownMenuItem<String>(
        value: option.value,
        child: Text(option.label),
      )).toList(),
      hint: Text(config.label),
      validationMessages: {},
    );
  }

  Widget _buildCheckbox(BCheckboxType config) {
    return ReactiveCheckboxList<bool>(
      formControlName: config.name,
      items: [false],
      title: Text(config.label),
      validationMessages: {},
    );
  }

  Widget _buildRadioGroup(BRadioGroupType config) {
    return ReactiveRadioList<String>(
      formControlName: config.name,
      items: config.options.map((option) => ReactiveRadioListItem<String>(
        value: option.value,
        title: Text(option.label),
      )).toList(),
      title: Text(config.label),
      validationMessages: {},
    );
  }

  Widget _buildSwitch(BSwitchFieldType config) {
    return ReactiveSwitch(
      formControlName: config.name,
      title: Text(config.label),
      validationMessages: {},
    );
  }

  Widget _buildDatePicker(BDatePickerType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          decoration: InputDecoration(
            labelText: config.label,
            border: const OutlineInputBorder(),
          ),
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: DateTime.tryParse(field.value ?? '') ?? DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
            if (date != null) {
              field.value = date.toIso8601String().split('T')[0];
            }
          },
        );
      },
    );
  }

  Widget _buildNumberField(BNumberFieldType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: config.label,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            final number = num.tryParse(value);
            if (number == null) {
              return 'Please enter a valid number';
            }
            if (config.min != null && number < config.min!) {
              return 'Minimum value is ${config.min}';
            }
            if (config.max != null && number > config.max!) {
              return 'Maximum value is ${config.max}';
            }
            return null;
          },
          onChanged: (value) {
            final number = num.tryParse(value ?? '');
            if (number != null) {
              field.value = number.toString();
            }
          },
        );
      },
    );
  }

  Widget _buildEmail(BEmailType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: config.label,
            hintText: config.placeholder,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
            if (!emailRegex.hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
          onChanged: (value) {
            field.value = value;
          },
        );
      },
    );
  }

  Widget _buildPassword(BPasswordType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          obscureText: true,
          decoration: InputDecoration(
            labelText: config.label,
            hintText: config.placeholder,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            if (config.minLength != null && value.length < config.minLength!) {
              return 'Password must be at least ${config.minLength} characters';
            }
            return null;
          },
          onChanged: (value) {
            field.value = value;
          },
        );
      },
    );
  }

  Widget _buildPhone(BPhoneType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return TextFormField(
          controller: TextEditingController(text: field.value ?? ''),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            labelText: config.label,
            hintText: config.placeholder,
            border: const OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              if (config.required == true) {
                return 'This field is required';
              }
              return null;
            }
            final phoneRegex = RegExp(r'^[\d\s\-\(\)\+]+$');
            if (!phoneRegex.hasMatch(value)) {
              return 'Please enter a valid phone number';
            }
            return null;
          },
          onChanged: (value) {
            field.value = value;
          },
        );
      },
    );
  }

  Widget _buildFileUpload(BFileUploadType config) {
    return ReactiveTextField<String>(
      formControlName: config.name,
      validationMessages: {},
      builder: (field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              config.label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('File upload not implemented yet')),
                );
              },
              child: const Text('Choose File'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCustom(BCustomType config) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            config.label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Custom field: ${config.type}'),
          if (config.properties != null) ...[
            const SizedBox(height: 8),
            Text('Properties: ${config.properties}'),
          ],
        ],
      ),
    );
  }
}