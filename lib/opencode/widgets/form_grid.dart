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
    return BContainer(
      padding: EdgeInsets.all(gutter ?? 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final actualColumns = _getColumnsForScreen(screenWidth);
          
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: actualColumns,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1.0,
            ),
            itemCount: fields.length,
            itemBuilder: (context, index) {
              return _buildFieldWidget(fields[index]);
            },
          );
        },
      ),
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
    // TODO: Implement BReactiveTextField
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text(config.placeholder ?? ''),
        ],
      ),
    );
  }

  Widget _buildTextArea(config) {
    // TODO: Implement BReactiveTextArea
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text(config.placeholder ?? ''),
        ],
      ),
    );
  }

  Widget _buildDropdown(config) {
    // TODO: Implement BReactiveDropdown
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Dropdown: ${config.options.length} options'),
        ],
      ),
    );
  }

  Widget _buildCheckbox(config) {
    // TODO: Implement BReactiveCheckbox
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Checkbox field'),
        ],
      ),
    );
  }

  Widget _buildRadioGroup(config) {
    // TODO: Implement BReactiveRadioGroup
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Radio group: ${config.options.length} options'),
        ],
      ),
    );
  }

  Widget _buildSwitch(config) {
    // TODO: Implement BReactiveSwitch
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Switch field'),
        ],
      ),
    );
  }

  Widget _buildDatePicker(config) {
    // TODO: Implement BReactiveDatePicker
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Date picker field'),
        ],
      ),
    );
  }

  Widget _buildNumberField(config) {
    // TODO: Implement BReactiveNumberField
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Number field: ${config.min}-${config.max}'),
        ],
      ),
    );
  }

  Widget _buildEmail(config) {
    // TODO: Implement BReactiveEmailField
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Email field'),
        ],
      ),
    );
  }

  Widget _buildPassword(config) {
    // TODO: Implement BReactivePasswordField
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Password field'),
        ],
      ),
    );
  }

  Widget _buildPhone(config) {
    // TODO: Implement BReactivePhoneField
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Phone field'),
        ],
      ),
    );
  }

  Widget _buildFileUpload(config) {
    // TODO: Implement BReactiveFileUpload
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('File upload field'),
        ],
      ),
    );
  }

  Widget _buildCustom(config) {
    // TODO: Implement custom field support
    return Container(
      padding: const EdgeInsets.all(8),
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
          const SizedBox(height: 4),
          Text('Custom field: ${config.type}'),
        ],
      ),
    );
  }
}