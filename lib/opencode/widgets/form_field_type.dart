import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_field_type.freezed.dart';

@freezed
abstract class BFormFieldType with _$BFormFieldType {
  const factory BFormFieldType.textField({
    required String name,
    required String label,
    String? placeholder,
    String? initialValue,
    bool? required,
    bool? enabled,
    int? maxLength,
    TextInputType? keyboardType,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
    Map<String, dynamic>? validationRules,
  }) = BTextFieldType;

  const factory BFormFieldType.textArea({
    required String name,
    required String label,
    String? placeholder,
    String? initialValue,
    int? maxLines,
    int? maxLength,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
    Map<String, dynamic>? validationRules,
  }) = BTextAreaType;

  const factory BFormFieldType.dropdown({
    required String name,
    required String label,
    required List<BOption> options,
    String? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
    Map<String, dynamic>? validationRules,
  }) = BDropdownType;

  const factory BFormFieldType.checkbox({
    required String name,
    required String label,
    bool? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BCheckboxType;

  const factory BFormFieldType.radioGroup({
    required String name,
    required String label,
    required List<BOption> options,
    String? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BRadioGroupType;

  const factory BFormFieldType.switchField({
    required String name,
    required String label,
    bool? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BSwitchFieldType;

  const factory BFormFieldType.datePicker({
    required String name,
    required String label,
    DateTime? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BDatePickerType;

  const factory BFormFieldType.numberField({
    required String name,
    required String label,
    num? initialValue,
    num? min,
    num? max,
    num? step,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
    Map<String, dynamic>? validationRules,
  }) = BNumberFieldType;

  const factory BFormFieldType.email({
    required String name,
    required String label,
    String? placeholder,
    String? initialValue,
    bool? required,
    bool? enabled,
    int? maxLength,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BEmailType;

  const factory BFormFieldType.password({
    required String name,
    required String label,
    String? placeholder,
    String? initialValue,
    bool? required,
    bool? enabled,
    int? minLength,
    int? maxLength,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BPasswordType;

  const factory BFormFieldType.phone({
    required String name,
    required String label,
    String? placeholder,
    String? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BPhoneType;

  const factory BFormFieldType.fileUpload({
    required String name,
    required String label,
    List<String>? allowedExtensions,
    int? maxSize,
    bool? multiple,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BFileUploadType;

  const factory BFormFieldType.custom({
    required String name,
    required String label,
    required String type,
    Map<String, dynamic>? properties,
    String? initialValue,
    bool? required,
    bool? enabled,
    List<String>? validators,
    String? helperText,
    BGridConfig? grid,
    List<BFormFieldCondition>? conditions,
  }) = BCustomType;
}

@freezed
abstract class BOption with _$BOption {
  const factory BOption({
    required String value,
    required String label,
    String? description,
    dynamic data,
  }) = _BOption;
}

@freezed
abstract class BGridConfig with _$BGridConfig {
  const factory BGridConfig({
    int? columns,
    int? xs,
    int? sm,
    int? md,
    int? lg,
    int? xl,
    int? xxl,
    double? gutter,
    String? className,
  }) = _BGridConfig;
}

@freezed
abstract class BFormFieldCondition with _$BFormFieldCondition {
  const factory BFormFieldCondition.show({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BShowCondition;

  const factory BFormFieldCondition.hide({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BHideCondition;

  const factory BFormFieldCondition.enable({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BEnableCondition;

  const factory BFormFieldCondition.disable({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BDisableCondition;

  const factory BFormFieldCondition.required({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BRequiredCondition;

  const factory BFormFieldCondition.clear({
    required String fieldKey,
    required String operator,
    required dynamic value,
  }) = BClearCondition;

  const factory BFormFieldCondition.setValue({
    required String fieldKey,
    required String operator,
    required dynamic value,
    required dynamic newValue,
  }) = BSetValueCondition;

  const factory BFormFieldCondition.replaceForm({
    required String fieldKey,
    required String operator,
    required dynamic value,
    required List<BFormFieldType> newFormFields,
  }) = BReplaceFormCondition;
}

enum BConditionOperator {
  equals,
  notEquals,
  contains,
  notContains,
  greaterThan,
  lessThan,
  greaterThanOrEqual,
  lessThanOrEqual,
  isEmpty,
  isNotEmpty,
  isNull,
  isNotNull,
}

enum BFormActionType {
  updateFields,
  clearField,
  enableField,
  disableField,
  showField,
  hideField,
  setRequired,
  setOptional,
  replaceForm,
  validateField,
  validateForm,
  resetForm,
}

@freezed
abstract class BFormAction with _$BFormAction {
  const factory BFormAction.updateFields({
    required List<BFormFieldType> fields,
  }) = BUpdateFieldsAction;

  const factory BFormAction.clearField({
    required String fieldKey,
  }) = BClearFieldAction;

  const factory BFormAction.enableField({
    required String fieldKey,
  }) = BEnableFieldAction;

  const factory BFormAction.disableField({
    required String fieldKey,
  }) = BDisableFieldAction;

  const factory BFormAction.showField({
    required String fieldKey,
  }) = BShowFieldAction;

  const factory BFormAction.hideField({
    required String fieldKey,
  }) = BHideFieldAction;

  const factory BFormAction.setRequired({
    required String fieldKey,
  }) = BSetRequiredAction;

  const factory BFormAction.setOptional({
    required String fieldKey,
  }) = BSetOptionalAction;

  const factory BFormAction.replaceForm({
    required List<BFormFieldType> newFields,
  }) = BReplaceFormAction;

  const factory BFormAction.validateField({
    required String fieldKey,
  }) = BValidateFieldAction;

  const factory BFormAction.validateForm() = BValidateFormAction;

  const factory BFormAction.resetForm() = BResetFormAction;
}

extension BFormFieldTypeExtension on BFormFieldType {
  String get name => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => name,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => name,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => name,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => name,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => name,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => name,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => name,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => name,
  );

  String get label => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => label,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => label,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => label,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => label,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => label,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => label,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => label,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => label,
  );

  dynamic get initialValue => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => initialValue,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => initialValue,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => initialValue,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => initialValue,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => initialValue,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => initialValue,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => null,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => initialValue,
  );

  bool get enabled => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => enabled ?? true,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => enabled ?? true,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => enabled ?? true,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => enabled ?? true,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => enabled ?? true,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => enabled ?? true,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => enabled ?? true,
  );

  bool get required => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => required ?? false,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => required ?? false,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => required ?? false,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => required ?? false,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => required ?? false,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => required ?? false,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => required ?? false,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => required ?? false,
  );

  List<BFormFieldCondition>? get conditions => when(
    textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => conditions,
    textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => conditions,
    dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => conditions,
    checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
    radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
    switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
    datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
    numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => conditions,
    email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => conditions,
    password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => conditions,
    phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
    fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => conditions,
    custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => conditions,
  );

  BFormFieldType copyWithInitialValue(dynamic newValue) {
    return when(
      textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textField(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          maxLength: maxLength,
          keyboardType: keyboardType,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textArea(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: newValue as String?,
          maxLines: maxLines,
          maxLength: maxLength,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.dropdown(
          name: name,
          label: label,
          options: options,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.checkbox(
          name: name,
          label: label,
          initialValue: newValue as bool? ?? false,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.radioGroup(
          name: name,
          label: label,
          options: options,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.switchField(
          name: name,
          label: label,
          initialValue: newValue as bool? ?? false,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.datePicker(
          name: name,
          label: label,
          initialValue: newValue as DateTime?,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.numberField(
          name: name,
          label: label,
          initialValue: newValue as num?,
          min: min,
          max: max,
          step: step,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.email(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.password(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          minLength: minLength,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.phone(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: newValue as String?,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.fileUpload(
          name: name,
          label: label,
          allowedExtensions: allowedExtensions,
          maxSize: maxSize,
          multiple: multiple,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.custom(
          name: name,
          label: label,
          type: type,
          properties: properties,
          initialValue: newValue,
          required: required,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
    );
  }

  BFormFieldType copyWithEnabled(bool newEnabled) {
    return when(
      textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textField(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          maxLength: maxLength,
          keyboardType: keyboardType,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textArea(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          maxLines: maxLines,
          maxLength: maxLength,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.dropdown(
          name: name,
          label: label,
          options: options,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.checkbox(
          name: name,
          label: label,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.radioGroup(
          name: name,
          label: label,
          options: options,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.switchField(
          name: name,
          label: label,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.datePicker(
          name: name,
          label: label,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.numberField(
          name: name,
          label: label,
          initialValue: initialValue,
          min: min,
          max: max,
          step: step,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.email(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.password(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          minLength: minLength,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.phone(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.fileUpload(
          name: name,
          label: label,
          allowedExtensions: allowedExtensions,
          maxSize: maxSize,
          multiple: multiple,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.custom(
          name: name,
          label: label,
          type: type,
          properties: properties,
          initialValue: initialValue,
          required: required,
          enabled: newEnabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
    );
  }

  BFormFieldType copyWithRequired(bool newRequired) {
    return when(
      textField: (name, label, placeholder, initialValue, required, enabled, maxLength, keyboardType, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textField(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          maxLength: maxLength,
          keyboardType: keyboardType,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      textArea: (name, label, placeholder, initialValue, maxLines, maxLength, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.textArea(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          maxLines: maxLines,
          maxLength: maxLength,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      dropdown: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.dropdown(
          name: name,
          label: label,
          options: options,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      checkbox: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.checkbox(
          name: name,
          label: label,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      radioGroup: (name, label, options, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.radioGroup(
          name: name,
          label: label,
          options: options,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      switchField: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.switchField(
          name: name,
          label: label,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      datePicker: (name, label, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.datePicker(
          name: name,
          label: label,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      numberField: (name, label, initialValue, min, max, step, required, enabled, validators, helperText, grid, conditions, validationRules) => 
        BFormFieldType.numberField(
          name: name,
          label: label,
          initialValue: initialValue,
          min: min,
          max: max,
          step: step,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
          validationRules: validationRules,
        ),
      email: (name, label, placeholder, initialValue, required, enabled, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.email(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      password: (name, label, placeholder, initialValue, required, enabled, minLength, maxLength, validators, helperText, grid, conditions) => 
        BFormFieldType.password(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          minLength: minLength,
          maxLength: maxLength,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      phone: (name, label, placeholder, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.phone(
          name: name,
          label: label,
          placeholder: placeholder,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      fileUpload: (name, label, allowedExtensions, maxSize, multiple, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.fileUpload(
          name: name,
          label: label,
          allowedExtensions: allowedExtensions,
          maxSize: maxSize,
          multiple: multiple,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
      custom: (name, label, type, properties, initialValue, required, enabled, validators, helperText, grid, conditions) => 
        BFormFieldType.custom(
          name: name,
          label: label,
          type: type,
          properties: properties,
          initialValue: initialValue,
          required: newRequired,
          enabled: enabled,
          validators: validators,
          helperText: helperText,
          grid: grid,
          conditions: conditions,
        ),
    );
  }
}