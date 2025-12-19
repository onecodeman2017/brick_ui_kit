import 'package:flutter/material.dart';
import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';
import './form_field_type.dart';

/// Grid layout widget for form fields
class BFormGrid extends StatelessWidget {
  final List<BFormFieldType> fields;
  final double? gutter;
  final int? columns;
  final int? xs;
  final int? sm;
  final int? md;
  final int? lg;
  final int? xl;
  final int? xxl;

  const BFormGrid({
    super.key,
    required this.fields,
    this.gutter,
    this.columns,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
    this.xxl,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final actualColumns = _getColumnsForScreen(screenWidth);
        
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: actualColumns,
            crossAxisSpacing: gutter ?? 16,
            mainAxisSpacing: gutter ?? 16,
            childAspectRatio: 1.0,
          ),
          itemCount: fields.length,
          itemBuilder: (context, index) {
            return _buildFieldWidget(fields[index]);
          },
        );
      },
    );
  }

  int _getColumnsForScreen(double screenWidth) {
    if (xxl != null && screenWidth >= 1400) return xxl!;
    if (xl != null && screenWidth >= 1200) return xl!;
    if (lg != null && screenWidth >= 992) return lg!;
    if (md != null && screenWidth >= 768) return md!;
    if (sm != null && screenWidth >= 576) return sm!;
    if (xs != null && screenWidth >= 0) return xs!;
    return columns ?? 1;
  }

  Widget _buildFieldWidget(BFormFieldType fieldType) {
    return fieldType.when(
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

  Widget _buildTextField(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5Field(
        label: config.label,
        hintText: config.placeholder,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        maxLength: config.maxLength,
        keyboardType: config.keyboardType,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildTextArea(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5Field(
        label: config.label,
        hintText: config.placeholder,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        maxLength: config.maxLength,
        maxLines: config.maxLines ?? 3,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildDropdown(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5Dropdown(
        label: config.label,
        options: config.options,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildCheckbox(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5Checkbox(
        label: config.label,
        initialValue: config.initialValue ?? false,
        enabled: config.enabled,
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildRadioGroup(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5RadioGroup(
        label: config.label,
        options: config.options,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildSwitch(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5Switch(
        label: config.label,
        initialValue: config.initialValue ?? false,
        enabled: config.enabled,
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildDatePicker(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5DatePicker(
        label: config.label,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildNumberField(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5NumberField(
        label: config.label,
        initialValue: config.initialValue?.toString(),
        required: config.required,
        enabled: config.enabled,
        min: config.min?.toDouble(),
        max: config.max?.toDouble(),
        step: config.step?.toDouble(),
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          final number = num.tryParse(value ?? '');
          if (config.min != null && number != null && number < config.min!) {
            return '${config.label} must be at least ${config.min}';
          }
          if (config.max != null && number != null && number > config.max!) {
            return '${config.label} must be at most ${config.max}';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildEmail(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5EmailField(
        label: config.label,
        hintText: config.placeholder,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        maxLength: config.maxLength,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          if (value != null && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value!)) {
            return 'Please enter a valid email';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildPassword(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5PasswordField(
        label: config.label,
        hintText: config.placeholder,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        minLength: config.minLength,
        maxLength: config.maxLength,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          if (config.minLength != null && value != null && value!.length < config.minLength!) {
            return '${config.label} must be at least ${config.minLength} characters';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildPhone(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5PhoneField(
        label: config.label,
        hintText: config.placeholder,
        initialValue: config.initialValue,
        required: config.required,
        enabled: config.enabled,
        validator: (value) {
          if (config.required == true && (value == null || value!.isEmpty)) {
            return '${config.label} is required';
          }
          if (value != null && !RegExp(r'^[\d\s\-\(\)\+]+$').hasMatch(value!)) {
            return 'Please enter a valid phone number';
          }
          return null;
        },
        onChanged: (value) {
          // Handle field value change
        },
      ),
    );
  }

  Widget _buildFileUpload(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: H5FileUpload(
        label: config.label,
        required: config.required,
        enabled: config.enabled,
        allowedExtensions: config.allowedExtensions,
        maxSize: config.maxSize,
        multiple: config.multiple,
        validator: (value) {
          if (config.required == true && (value == null)) {
            return '${config.label} is required';
          }
          return null;
        },
        onChanged: (value) {
          // Handle file upload
        },
      ),
    );
  }

  Widget _buildCustom(config) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            config.label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text('Custom field: ${config.type}'),
          if (config.properties != null) ...[
            const SizedBox(height: 4),
            Text('Properties: ${config.properties}'),
          ],
        ],
      ),
    );
  }
}