// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BFormFieldType {
  String get name;
  String get label;
  bool? get required;
  bool? get enabled;
  List<String>? get validators;
  String? get helperText;
  BGridConfig? get grid;
  List<BFormFieldCondition>? get conditions;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BFormFieldTypeCopyWith<BFormFieldType> get copyWith =>
      _$BFormFieldTypeCopyWithImpl<BFormFieldType>(
          this as BFormFieldType, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BFormFieldType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other.validators, validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      required,
      enabled,
      const DeepCollectionEquality().hash(validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(conditions));

  @override
  String toString() {
    return 'BFormFieldType(name: $name, label: $label, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BFormFieldTypeCopyWith<$Res> {
  factory $BFormFieldTypeCopyWith(
          BFormFieldType value, $Res Function(BFormFieldType) _then) =
      _$BFormFieldTypeCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String label,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BFormFieldTypeCopyWithImpl<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  _$BFormFieldTypeCopyWithImpl(this._self, this._then);

  final BFormFieldType _self;
  final $Res Function(BFormFieldType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self.validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BFormFieldType].
extension BFormFieldTypePatterns on BFormFieldType {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BTextFieldType value)? textField,
    TResult Function(BTextAreaType value)? textArea,
    TResult Function(BDropdownType value)? dropdown,
    TResult Function(BCheckboxType value)? checkbox,
    TResult Function(BRadioGroupType value)? radioGroup,
    TResult Function(BSwitchFieldType value)? switchField,
    TResult Function(BDatePickerType value)? datePicker,
    TResult Function(BNumberFieldType value)? numberField,
    TResult Function(BEmailType value)? email,
    TResult Function(BPasswordType value)? password,
    TResult Function(BPhoneType value)? phone,
    TResult Function(BFileUploadType value)? fileUpload,
    TResult Function(BCustomType value)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType() when textField != null:
        return textField(_that);
      case BTextAreaType() when textArea != null:
        return textArea(_that);
      case BDropdownType() when dropdown != null:
        return dropdown(_that);
      case BCheckboxType() when checkbox != null:
        return checkbox(_that);
      case BRadioGroupType() when radioGroup != null:
        return radioGroup(_that);
      case BSwitchFieldType() when switchField != null:
        return switchField(_that);
      case BDatePickerType() when datePicker != null:
        return datePicker(_that);
      case BNumberFieldType() when numberField != null:
        return numberField(_that);
      case BEmailType() when email != null:
        return email(_that);
      case BPasswordType() when password != null:
        return password(_that);
      case BPhoneType() when phone != null:
        return phone(_that);
      case BFileUploadType() when fileUpload != null:
        return fileUpload(_that);
      case BCustomType() when custom != null:
        return custom(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BTextFieldType value) textField,
    required TResult Function(BTextAreaType value) textArea,
    required TResult Function(BDropdownType value) dropdown,
    required TResult Function(BCheckboxType value) checkbox,
    required TResult Function(BRadioGroupType value) radioGroup,
    required TResult Function(BSwitchFieldType value) switchField,
    required TResult Function(BDatePickerType value) datePicker,
    required TResult Function(BNumberFieldType value) numberField,
    required TResult Function(BEmailType value) email,
    required TResult Function(BPasswordType value) password,
    required TResult Function(BPhoneType value) phone,
    required TResult Function(BFileUploadType value) fileUpload,
    required TResult Function(BCustomType value) custom,
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType():
        return textField(_that);
      case BTextAreaType():
        return textArea(_that);
      case BDropdownType():
        return dropdown(_that);
      case BCheckboxType():
        return checkbox(_that);
      case BRadioGroupType():
        return radioGroup(_that);
      case BSwitchFieldType():
        return switchField(_that);
      case BDatePickerType():
        return datePicker(_that);
      case BNumberFieldType():
        return numberField(_that);
      case BEmailType():
        return email(_that);
      case BPasswordType():
        return password(_that);
      case BPhoneType():
        return phone(_that);
      case BFileUploadType():
        return fileUpload(_that);
      case BCustomType():
        return custom(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BTextFieldType value)? textField,
    TResult? Function(BTextAreaType value)? textArea,
    TResult? Function(BDropdownType value)? dropdown,
    TResult? Function(BCheckboxType value)? checkbox,
    TResult? Function(BRadioGroupType value)? radioGroup,
    TResult? Function(BSwitchFieldType value)? switchField,
    TResult? Function(BDatePickerType value)? datePicker,
    TResult? Function(BNumberFieldType value)? numberField,
    TResult? Function(BEmailType value)? email,
    TResult? Function(BPasswordType value)? password,
    TResult? Function(BPhoneType value)? phone,
    TResult? Function(BFileUploadType value)? fileUpload,
    TResult? Function(BCustomType value)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType() when textField != null:
        return textField(_that);
      case BTextAreaType() when textArea != null:
        return textArea(_that);
      case BDropdownType() when dropdown != null:
        return dropdown(_that);
      case BCheckboxType() when checkbox != null:
        return checkbox(_that);
      case BRadioGroupType() when radioGroup != null:
        return radioGroup(_that);
      case BSwitchFieldType() when switchField != null:
        return switchField(_that);
      case BDatePickerType() when datePicker != null:
        return datePicker(_that);
      case BNumberFieldType() when numberField != null:
        return numberField(_that);
      case BEmailType() when email != null:
        return email(_that);
      case BPasswordType() when password != null:
        return password(_that);
      case BPhoneType() when phone != null:
        return phone(_that);
      case BFileUploadType() when fileUpload != null:
        return fileUpload(_that);
      case BCustomType() when custom != null:
        return custom(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        textField,
    TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        textArea,
    TResult Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions,
            Map<String, dynamic>? validationRules)?
        dropdown,
    TResult Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        checkbox,
    TResult Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        radioGroup,
    TResult Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        switchField,
    TResult Function(
            String name,
            String label,
            DateTime? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        datePicker,
    TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        numberField,
    TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        email,
    TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? minLength,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        password,
    TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        phone,
    TResult Function(
            String name,
            String label,
            List<String>? allowedExtensions,
            int? maxSize,
            bool? multiple,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        fileUpload,
    TResult Function(
            String name,
            String label,
            String type,
            Map<String, dynamic>? properties,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType() when textField != null:
        return textField(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.keyboardType,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BTextAreaType() when textArea != null:
        return textArea(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.maxLines,
            _that.maxLength,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BDropdownType() when dropdown != null:
        return dropdown(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BCheckboxType() when checkbox != null:
        return checkbox(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BRadioGroupType() when radioGroup != null:
        return radioGroup(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BSwitchFieldType() when switchField != null:
        return switchField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BDatePickerType() when datePicker != null:
        return datePicker(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BNumberFieldType() when numberField != null:
        return numberField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.min,
            _that.max,
            _that.step,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BEmailType() when email != null:
        return email(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPasswordType() when password != null:
        return password(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.minLength,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPhoneType() when phone != null:
        return phone(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BFileUploadType() when fileUpload != null:
        return fileUpload(
            _that.name,
            _that.label,
            _that.allowedExtensions,
            _that.maxSize,
            _that.multiple,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BCustomType() when custom != null:
        return custom(
            _that.name,
            _that.label,
            _that.type,
            _that.properties,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)
        textField,
    required TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)
        textArea,
    required TResult Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions,
            Map<String, dynamic>? validationRules)
        dropdown,
    required TResult Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        checkbox,
    required TResult Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        radioGroup,
    required TResult Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        switchField,
    required TResult Function(
            String name,
            String label,
            DateTime? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        datePicker,
    required TResult Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)
        numberField,
    required TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        email,
    required TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? minLength,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        password,
    required TResult Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        phone,
    required TResult Function(
            String name,
            String label,
            List<String>? allowedExtensions,
            int? maxSize,
            bool? multiple,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        fileUpload,
    required TResult Function(
            String name,
            String label,
            String type,
            Map<String, dynamic>? properties,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)
        custom,
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType():
        return textField(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.keyboardType,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BTextAreaType():
        return textArea(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.maxLines,
            _that.maxLength,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BDropdownType():
        return dropdown(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BCheckboxType():
        return checkbox(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BRadioGroupType():
        return radioGroup(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BSwitchFieldType():
        return switchField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BDatePickerType():
        return datePicker(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BNumberFieldType():
        return numberField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.min,
            _that.max,
            _that.step,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BEmailType():
        return email(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPasswordType():
        return password(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.minLength,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPhoneType():
        return phone(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BFileUploadType():
        return fileUpload(
            _that.name,
            _that.label,
            _that.allowedExtensions,
            _that.maxSize,
            _that.multiple,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BCustomType():
        return custom(
            _that.name,
            _that.label,
            _that.type,
            _that.properties,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        textField,
    TResult? Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        textArea,
    TResult? Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions,
            Map<String, dynamic>? validationRules)?
        dropdown,
    TResult? Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        checkbox,
    TResult? Function(
            String name,
            String label,
            List<BOption> options,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        radioGroup,
    TResult? Function(
            String name,
            String label,
            bool? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        switchField,
    TResult? Function(
            String name,
            String label,
            DateTime? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        datePicker,
    TResult? Function(
            String name,
            String label,
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
            Map<String, dynamic>? validationRules)?
        numberField,
    TResult? Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        email,
    TResult? Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            int? minLength,
            int? maxLength,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        password,
    TResult? Function(
            String name,
            String label,
            String? placeholder,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        phone,
    TResult? Function(
            String name,
            String label,
            List<String>? allowedExtensions,
            int? maxSize,
            bool? multiple,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        fileUpload,
    TResult? Function(
            String name,
            String label,
            String type,
            Map<String, dynamic>? properties,
            String? initialValue,
            bool? required,
            bool? enabled,
            List<String>? validators,
            String? helperText,
            BGridConfig? grid,
            List<BFormFieldCondition>? conditions)?
        custom,
  }) {
    final _that = this;
    switch (_that) {
      case BTextFieldType() when textField != null:
        return textField(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.keyboardType,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BTextAreaType() when textArea != null:
        return textArea(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.maxLines,
            _that.maxLength,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BDropdownType() when dropdown != null:
        return dropdown(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BCheckboxType() when checkbox != null:
        return checkbox(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BRadioGroupType() when radioGroup != null:
        return radioGroup(
            _that.name,
            _that.label,
            _that.options,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BSwitchFieldType() when switchField != null:
        return switchField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BDatePickerType() when datePicker != null:
        return datePicker(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BNumberFieldType() when numberField != null:
        return numberField(
            _that.name,
            _that.label,
            _that.initialValue,
            _that.min,
            _that.max,
            _that.step,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions,
            _that.validationRules);
      case BEmailType() when email != null:
        return email(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPasswordType() when password != null:
        return password(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.minLength,
            _that.maxLength,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BPhoneType() when phone != null:
        return phone(
            _that.name,
            _that.label,
            _that.placeholder,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BFileUploadType() when fileUpload != null:
        return fileUpload(
            _that.name,
            _that.label,
            _that.allowedExtensions,
            _that.maxSize,
            _that.multiple,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case BCustomType() when custom != null:
        return custom(
            _that.name,
            _that.label,
            _that.type,
            _that.properties,
            _that.initialValue,
            _that.required,
            _that.enabled,
            _that.validators,
            _that.helperText,
            _that.grid,
            _that.conditions);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BTextFieldType implements BFormFieldType {
  const BTextFieldType(
      {required this.name,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.required,
      this.enabled,
      this.maxLength,
      this.keyboardType,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions,
      final Map<String, dynamic>? validationRules})
      : _validators = validators,
        _conditions = conditions,
        _validationRules = validationRules;

  @override
  final String name;
  @override
  final String label;
  final String? placeholder;
  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final int? maxLength;
  final TextInputType? keyboardType;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _validationRules;
  Map<String, dynamic>? get validationRules {
    final value = _validationRules;
    if (value == null) return null;
    if (_validationRules is EqualUnmodifiableMapView) return _validationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BTextFieldTypeCopyWith<BTextFieldType> get copyWith =>
      _$BTextFieldTypeCopyWithImpl<BTextFieldType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BTextFieldType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._validationRules, _validationRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      placeholder,
      initialValue,
      required,
      enabled,
      maxLength,
      keyboardType,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_validationRules));

  @override
  String toString() {
    return 'BFormFieldType.textField(name: $name, label: $label, placeholder: $placeholder, initialValue: $initialValue, required: $required, enabled: $enabled, maxLength: $maxLength, keyboardType: $keyboardType, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions, validationRules: $validationRules)';
  }
}

/// @nodoc
abstract mixin class $BTextFieldTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BTextFieldTypeCopyWith(
          BTextFieldType value, $Res Function(BTextFieldType) _then) =
      _$BTextFieldTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
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
      Map<String, dynamic>? validationRules});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BTextFieldTypeCopyWithImpl<$Res>
    implements $BTextFieldTypeCopyWith<$Res> {
  _$BTextFieldTypeCopyWithImpl(this._self, this._then);

  final BTextFieldType _self;
  final $Res Function(BTextFieldType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? maxLength = freezed,
    Object? keyboardType = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
    Object? validationRules = freezed,
  }) {
    return _then(BTextFieldType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      keyboardType: freezed == keyboardType
          ? _self.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
      validationRules: freezed == validationRules
          ? _self._validationRules
          : validationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BTextAreaType implements BFormFieldType {
  const BTextAreaType(
      {required this.name,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.maxLines,
      this.maxLength,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions,
      final Map<String, dynamic>? validationRules})
      : _validators = validators,
        _conditions = conditions,
        _validationRules = validationRules;

  @override
  final String name;
  @override
  final String label;
  final String? placeholder;
  final String? initialValue;
  final int? maxLines;
  final int? maxLength;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _validationRules;
  Map<String, dynamic>? get validationRules {
    final value = _validationRules;
    if (value == null) return null;
    if (_validationRules is EqualUnmodifiableMapView) return _validationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BTextAreaTypeCopyWith<BTextAreaType> get copyWith =>
      _$BTextAreaTypeCopyWithImpl<BTextAreaType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BTextAreaType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._validationRules, _validationRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      placeholder,
      initialValue,
      maxLines,
      maxLength,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_validationRules));

  @override
  String toString() {
    return 'BFormFieldType.textArea(name: $name, label: $label, placeholder: $placeholder, initialValue: $initialValue, maxLines: $maxLines, maxLength: $maxLength, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions, validationRules: $validationRules)';
  }
}

/// @nodoc
abstract mixin class $BTextAreaTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BTextAreaTypeCopyWith(
          BTextAreaType value, $Res Function(BTextAreaType) _then) =
      _$BTextAreaTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
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
      Map<String, dynamic>? validationRules});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BTextAreaTypeCopyWithImpl<$Res>
    implements $BTextAreaTypeCopyWith<$Res> {
  _$BTextAreaTypeCopyWithImpl(this._self, this._then);

  final BTextAreaType _self;
  final $Res Function(BTextAreaType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? initialValue = freezed,
    Object? maxLines = freezed,
    Object? maxLength = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
    Object? validationRules = freezed,
  }) {
    return _then(BTextAreaType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
      validationRules: freezed == validationRules
          ? _self._validationRules
          : validationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BDropdownType implements BFormFieldType {
  const BDropdownType(
      {required this.name,
      required this.label,
      required final List<BOption> options,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions,
      final Map<String, dynamic>? validationRules})
      : _options = options,
        _validators = validators,
        _conditions = conditions,
        _validationRules = validationRules;

  @override
  final String name;
  @override
  final String label;
  final List<BOption> _options;
  List<BOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _validationRules;
  Map<String, dynamic>? get validationRules {
    final value = _validationRules;
    if (value == null) return null;
    if (_validationRules is EqualUnmodifiableMapView) return _validationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BDropdownTypeCopyWith<BDropdownType> get copyWith =>
      _$BDropdownTypeCopyWithImpl<BDropdownType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BDropdownType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._validationRules, _validationRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      const DeepCollectionEquality().hash(_options),
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_validationRules));

  @override
  String toString() {
    return 'BFormFieldType.dropdown(name: $name, label: $label, options: $options, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions, validationRules: $validationRules)';
  }
}

/// @nodoc
abstract mixin class $BDropdownTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BDropdownTypeCopyWith(
          BDropdownType value, $Res Function(BDropdownType) _then) =
      _$BDropdownTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      List<BOption> options,
      String? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions,
      Map<String, dynamic>? validationRules});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BDropdownTypeCopyWithImpl<$Res>
    implements $BDropdownTypeCopyWith<$Res> {
  _$BDropdownTypeCopyWithImpl(this._self, this._then);

  final BDropdownType _self;
  final $Res Function(BDropdownType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? options = null,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
    Object? validationRules = freezed,
  }) {
    return _then(BDropdownType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<BOption>,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
      validationRules: freezed == validationRules
          ? _self._validationRules
          : validationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BCheckboxType implements BFormFieldType {
  const BCheckboxType(
      {required this.name,
      required this.label,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final bool? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BCheckboxTypeCopyWith<BCheckboxType> get copyWith =>
      _$BCheckboxTypeCopyWithImpl<BCheckboxType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BCheckboxType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.checkbox(name: $name, label: $label, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BCheckboxTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BCheckboxTypeCopyWith(
          BCheckboxType value, $Res Function(BCheckboxType) _then) =
      _$BCheckboxTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      bool? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BCheckboxTypeCopyWithImpl<$Res>
    implements $BCheckboxTypeCopyWith<$Res> {
  _$BCheckboxTypeCopyWithImpl(this._self, this._then);

  final BCheckboxType _self;
  final $Res Function(BCheckboxType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BCheckboxType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BRadioGroupType implements BFormFieldType {
  const BRadioGroupType(
      {required this.name,
      required this.label,
      required final List<BOption> options,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _options = options,
        _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final List<BOption> _options;
  List<BOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BRadioGroupTypeCopyWith<BRadioGroupType> get copyWith =>
      _$BRadioGroupTypeCopyWithImpl<BRadioGroupType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BRadioGroupType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      const DeepCollectionEquality().hash(_options),
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.radioGroup(name: $name, label: $label, options: $options, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BRadioGroupTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BRadioGroupTypeCopyWith(
          BRadioGroupType value, $Res Function(BRadioGroupType) _then) =
      _$BRadioGroupTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      List<BOption> options,
      String? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BRadioGroupTypeCopyWithImpl<$Res>
    implements $BRadioGroupTypeCopyWith<$Res> {
  _$BRadioGroupTypeCopyWithImpl(this._self, this._then);

  final BRadioGroupType _self;
  final $Res Function(BRadioGroupType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? options = null,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BRadioGroupType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<BOption>,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BSwitchFieldType implements BFormFieldType {
  const BSwitchFieldType(
      {required this.name,
      required this.label,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final bool? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BSwitchFieldTypeCopyWith<BSwitchFieldType> get copyWith =>
      _$BSwitchFieldTypeCopyWithImpl<BSwitchFieldType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BSwitchFieldType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.switchField(name: $name, label: $label, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BSwitchFieldTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BSwitchFieldTypeCopyWith(
          BSwitchFieldType value, $Res Function(BSwitchFieldType) _then) =
      _$BSwitchFieldTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      bool? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BSwitchFieldTypeCopyWithImpl<$Res>
    implements $BSwitchFieldTypeCopyWith<$Res> {
  _$BSwitchFieldTypeCopyWithImpl(this._self, this._then);

  final BSwitchFieldType _self;
  final $Res Function(BSwitchFieldType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BSwitchFieldType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as bool?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BDatePickerType implements BFormFieldType {
  const BDatePickerType(
      {required this.name,
      required this.label,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final DateTime? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BDatePickerTypeCopyWith<BDatePickerType> get copyWith =>
      _$BDatePickerTypeCopyWithImpl<BDatePickerType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BDatePickerType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.datePicker(name: $name, label: $label, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BDatePickerTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BDatePickerTypeCopyWith(
          BDatePickerType value, $Res Function(BDatePickerType) _then) =
      _$BDatePickerTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      DateTime? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BDatePickerTypeCopyWithImpl<$Res>
    implements $BDatePickerTypeCopyWith<$Res> {
  _$BDatePickerTypeCopyWithImpl(this._self, this._then);

  final BDatePickerType _self;
  final $Res Function(BDatePickerType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BDatePickerType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BNumberFieldType implements BFormFieldType {
  const BNumberFieldType(
      {required this.name,
      required this.label,
      this.initialValue,
      this.min,
      this.max,
      this.step,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions,
      final Map<String, dynamic>? validationRules})
      : _validators = validators,
        _conditions = conditions,
        _validationRules = validationRules;

  @override
  final String name;
  @override
  final String label;
  final num? initialValue;
  final num? min;
  final num? max;
  final num? step;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _validationRules;
  Map<String, dynamic>? get validationRules {
    final value = _validationRules;
    if (value == null) return null;
    if (_validationRules is EqualUnmodifiableMapView) return _validationRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BNumberFieldTypeCopyWith<BNumberFieldType> get copyWith =>
      _$BNumberFieldTypeCopyWithImpl<BNumberFieldType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BNumberFieldType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            const DeepCollectionEquality()
                .equals(other._validationRules, _validationRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      initialValue,
      min,
      max,
      step,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions),
      const DeepCollectionEquality().hash(_validationRules));

  @override
  String toString() {
    return 'BFormFieldType.numberField(name: $name, label: $label, initialValue: $initialValue, min: $min, max: $max, step: $step, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions, validationRules: $validationRules)';
  }
}

/// @nodoc
abstract mixin class $BNumberFieldTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BNumberFieldTypeCopyWith(
          BNumberFieldType value, $Res Function(BNumberFieldType) _then) =
      _$BNumberFieldTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
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
      Map<String, dynamic>? validationRules});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BNumberFieldTypeCopyWithImpl<$Res>
    implements $BNumberFieldTypeCopyWith<$Res> {
  _$BNumberFieldTypeCopyWithImpl(this._self, this._then);

  final BNumberFieldType _self;
  final $Res Function(BNumberFieldType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? initialValue = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? step = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
    Object? validationRules = freezed,
  }) {
    return _then(BNumberFieldType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as num?,
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as num?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as num?,
      step: freezed == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as num?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
      validationRules: freezed == validationRules
          ? _self._validationRules
          : validationRules // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BEmailType implements BFormFieldType {
  const BEmailType(
      {required this.name,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.required,
      this.enabled,
      this.maxLength,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final String? placeholder;
  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final int? maxLength;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BEmailTypeCopyWith<BEmailType> get copyWith =>
      _$BEmailTypeCopyWithImpl<BEmailType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BEmailType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      placeholder,
      initialValue,
      required,
      enabled,
      maxLength,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.email(name: $name, label: $label, placeholder: $placeholder, initialValue: $initialValue, required: $required, enabled: $enabled, maxLength: $maxLength, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BEmailTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BEmailTypeCopyWith(
          BEmailType value, $Res Function(BEmailType) _then) =
      _$BEmailTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      String? placeholder,
      String? initialValue,
      bool? required,
      bool? enabled,
      int? maxLength,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BEmailTypeCopyWithImpl<$Res> implements $BEmailTypeCopyWith<$Res> {
  _$BEmailTypeCopyWithImpl(this._self, this._then);

  final BEmailType _self;
  final $Res Function(BEmailType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? maxLength = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BEmailType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BPasswordType implements BFormFieldType {
  const BPasswordType(
      {required this.name,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.required,
      this.enabled,
      this.minLength,
      this.maxLength,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final String? placeholder;
  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final int? minLength;
  final int? maxLength;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BPasswordTypeCopyWith<BPasswordType> get copyWith =>
      _$BPasswordTypeCopyWithImpl<BPasswordType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BPasswordType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      placeholder,
      initialValue,
      required,
      enabled,
      minLength,
      maxLength,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.password(name: $name, label: $label, placeholder: $placeholder, initialValue: $initialValue, required: $required, enabled: $enabled, minLength: $minLength, maxLength: $maxLength, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BPasswordTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BPasswordTypeCopyWith(
          BPasswordType value, $Res Function(BPasswordType) _then) =
      _$BPasswordTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      String? placeholder,
      String? initialValue,
      bool? required,
      bool? enabled,
      int? minLength,
      int? maxLength,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BPasswordTypeCopyWithImpl<$Res>
    implements $BPasswordTypeCopyWith<$Res> {
  _$BPasswordTypeCopyWithImpl(this._self, this._then);

  final BPasswordType _self;
  final $Res Function(BPasswordType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BPasswordType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BPhoneType implements BFormFieldType {
  const BPhoneType(
      {required this.name,
      required this.label,
      this.placeholder,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final String? placeholder;
  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BPhoneTypeCopyWith<BPhoneType> get copyWith =>
      _$BPhoneTypeCopyWithImpl<BPhoneType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BPhoneType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      placeholder,
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.phone(name: $name, label: $label, placeholder: $placeholder, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BPhoneTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BPhoneTypeCopyWith(
          BPhoneType value, $Res Function(BPhoneType) _then) =
      _$BPhoneTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      String? placeholder,
      String? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BPhoneTypeCopyWithImpl<$Res> implements $BPhoneTypeCopyWith<$Res> {
  _$BPhoneTypeCopyWithImpl(this._self, this._then);

  final BPhoneType _self;
  final $Res Function(BPhoneType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BPhoneType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BFileUploadType implements BFormFieldType {
  const BFileUploadType(
      {required this.name,
      required this.label,
      final List<String>? allowedExtensions,
      this.maxSize,
      this.multiple,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _allowedExtensions = allowedExtensions,
        _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final List<String>? _allowedExtensions;
  List<String>? get allowedExtensions {
    final value = _allowedExtensions;
    if (value == null) return null;
    if (_allowedExtensions is EqualUnmodifiableListView)
      return _allowedExtensions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final int? maxSize;
  final bool? multiple;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BFileUploadTypeCopyWith<BFileUploadType> get copyWith =>
      _$BFileUploadTypeCopyWithImpl<BFileUploadType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BFileUploadType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._allowedExtensions, _allowedExtensions) &&
            (identical(other.maxSize, maxSize) || other.maxSize == maxSize) &&
            (identical(other.multiple, multiple) ||
                other.multiple == multiple) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      const DeepCollectionEquality().hash(_allowedExtensions),
      maxSize,
      multiple,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.fileUpload(name: $name, label: $label, allowedExtensions: $allowedExtensions, maxSize: $maxSize, multiple: $multiple, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BFileUploadTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BFileUploadTypeCopyWith(
          BFileUploadType value, $Res Function(BFileUploadType) _then) =
      _$BFileUploadTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      List<String>? allowedExtensions,
      int? maxSize,
      bool? multiple,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BFileUploadTypeCopyWithImpl<$Res>
    implements $BFileUploadTypeCopyWith<$Res> {
  _$BFileUploadTypeCopyWithImpl(this._self, this._then);

  final BFileUploadType _self;
  final $Res Function(BFileUploadType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? allowedExtensions = freezed,
    Object? maxSize = freezed,
    Object? multiple = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BFileUploadType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      allowedExtensions: freezed == allowedExtensions
          ? _self._allowedExtensions
          : allowedExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      maxSize: freezed == maxSize
          ? _self.maxSize
          : maxSize // ignore: cast_nullable_to_non_nullable
              as int?,
      multiple: freezed == multiple
          ? _self.multiple
          : multiple // ignore: cast_nullable_to_non_nullable
              as bool?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc

class BCustomType implements BFormFieldType {
  const BCustomType(
      {required this.name,
      required this.label,
      required this.type,
      final Map<String, dynamic>? properties,
      this.initialValue,
      this.required,
      this.enabled,
      final List<String>? validators,
      this.helperText,
      this.grid,
      final List<BFormFieldCondition>? conditions})
      : _properties = properties,
        _validators = validators,
        _conditions = conditions;

  @override
  final String name;
  @override
  final String label;
  final String type;
  final Map<String, dynamic>? _properties;
  Map<String, dynamic>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final String? initialValue;
  @override
  final bool? required;
  @override
  final bool? enabled;
  final List<String>? _validators;
  @override
  List<String>? get validators {
    final value = _validators;
    if (value == null) return null;
    if (_validators is EqualUnmodifiableListView) return _validators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? helperText;
  @override
  final BGridConfig? grid;
  final List<BFormFieldCondition>? _conditions;
  @override
  List<BFormFieldCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BCustomTypeCopyWith<BCustomType> get copyWith =>
      _$BCustomTypeCopyWithImpl<BCustomType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BCustomType &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality()
                .equals(other._validators, _validators) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.grid, grid) || other.grid == grid) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      label,
      type,
      const DeepCollectionEquality().hash(_properties),
      initialValue,
      required,
      enabled,
      const DeepCollectionEquality().hash(_validators),
      helperText,
      grid,
      const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'BFormFieldType.custom(name: $name, label: $label, type: $type, properties: $properties, initialValue: $initialValue, required: $required, enabled: $enabled, validators: $validators, helperText: $helperText, grid: $grid, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $BCustomTypeCopyWith<$Res>
    implements $BFormFieldTypeCopyWith<$Res> {
  factory $BCustomTypeCopyWith(
          BCustomType value, $Res Function(BCustomType) _then) =
      _$BCustomTypeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String label,
      String type,
      Map<String, dynamic>? properties,
      String? initialValue,
      bool? required,
      bool? enabled,
      List<String>? validators,
      String? helperText,
      BGridConfig? grid,
      List<BFormFieldCondition>? conditions});

  @override
  $BGridConfigCopyWith<$Res>? get grid;
}

/// @nodoc
class _$BCustomTypeCopyWithImpl<$Res> implements $BCustomTypeCopyWith<$Res> {
  _$BCustomTypeCopyWithImpl(this._self, this._then);

  final BCustomType _self;
  final $Res Function(BCustomType) _then;

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? type = null,
    Object? properties = freezed,
    Object? initialValue = freezed,
    Object? required = freezed,
    Object? enabled = freezed,
    Object? validators = freezed,
    Object? helperText = freezed,
    Object? grid = freezed,
    Object? conditions = freezed,
  }) {
    return _then(BCustomType(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      initialValue: freezed == initialValue
          ? _self.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      validators: freezed == validators
          ? _self._validators
          : validators // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      grid: freezed == grid
          ? _self.grid
          : grid // ignore: cast_nullable_to_non_nullable
              as BGridConfig?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldCondition>?,
    ));
  }

  /// Create a copy of BFormFieldType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<$Res>? get grid {
    if (_self.grid == null) {
      return null;
    }

    return $BGridConfigCopyWith<$Res>(_self.grid!, (value) {
      return _then(_self.copyWith(grid: value));
    });
  }
}

/// @nodoc
mixin _$BOption {
  String get value;
  String get label;
  String? get description;
  dynamic get data;

  /// Create a copy of BOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BOptionCopyWith<BOption> get copyWith =>
      _$BOptionCopyWithImpl<BOption>(this as BOption, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BOption &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, label, description,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'BOption(value: $value, label: $label, description: $description, data: $data)';
  }
}

/// @nodoc
abstract mixin class $BOptionCopyWith<$Res> {
  factory $BOptionCopyWith(BOption value, $Res Function(BOption) _then) =
      _$BOptionCopyWithImpl;
  @useResult
  $Res call({String value, String label, String? description, dynamic data});
}

/// @nodoc
class _$BOptionCopyWithImpl<$Res> implements $BOptionCopyWith<$Res> {
  _$BOptionCopyWithImpl(this._self, this._then);

  final BOption _self;
  final $Res Function(BOption) _then;

  /// Create a copy of BOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = freezed,
    Object? data = freezed,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [BOption].
extension BOptionPatterns on BOption {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BOption() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BOption():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BOption() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String value, String label, String? description, dynamic data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BOption() when $default != null:
        return $default(
            _that.value, _that.label, _that.description, _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String value, String label, String? description, dynamic data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BOption():
        return $default(
            _that.value, _that.label, _that.description, _that.data);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String value, String label, String? description, dynamic data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BOption() when $default != null:
        return $default(
            _that.value, _that.label, _that.description, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BOption implements BOption {
  const _BOption(
      {required this.value, required this.label, this.description, this.data});

  @override
  final String value;
  @override
  final String label;
  @override
  final String? description;
  @override
  final dynamic data;

  /// Create a copy of BOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BOptionCopyWith<_BOption> get copyWith =>
      __$BOptionCopyWithImpl<_BOption>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BOption &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, label, description,
      const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'BOption(value: $value, label: $label, description: $description, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$BOptionCopyWith<$Res> implements $BOptionCopyWith<$Res> {
  factory _$BOptionCopyWith(_BOption value, $Res Function(_BOption) _then) =
      __$BOptionCopyWithImpl;
  @override
  @useResult
  $Res call({String value, String label, String? description, dynamic data});
}

/// @nodoc
class __$BOptionCopyWithImpl<$Res> implements _$BOptionCopyWith<$Res> {
  __$BOptionCopyWithImpl(this._self, this._then);

  final _BOption _self;
  final $Res Function(_BOption) _then;

  /// Create a copy of BOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = freezed,
    Object? data = freezed,
  }) {
    return _then(_BOption(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$BGridConfig {
  int? get columns;
  int? get xs;
  int? get sm;
  int? get md;
  int? get lg;
  int? get xl;
  int? get xxl;
  double? get gutter;
  String? get className;

  /// Create a copy of BGridConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BGridConfigCopyWith<BGridConfig> get copyWith =>
      _$BGridConfigCopyWithImpl<BGridConfig>(this as BGridConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BGridConfig &&
            (identical(other.columns, columns) || other.columns == columns) &&
            (identical(other.xs, xs) || other.xs == xs) &&
            (identical(other.sm, sm) || other.sm == sm) &&
            (identical(other.md, md) || other.md == md) &&
            (identical(other.lg, lg) || other.lg == lg) &&
            (identical(other.xl, xl) || other.xl == xl) &&
            (identical(other.xxl, xxl) || other.xxl == xxl) &&
            (identical(other.gutter, gutter) || other.gutter == gutter) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, columns, xs, sm, md, lg, xl, xxl, gutter, className);

  @override
  String toString() {
    return 'BGridConfig(columns: $columns, xs: $xs, sm: $sm, md: $md, lg: $lg, xl: $xl, xxl: $xxl, gutter: $gutter, className: $className)';
  }
}

/// @nodoc
abstract mixin class $BGridConfigCopyWith<$Res> {
  factory $BGridConfigCopyWith(
          BGridConfig value, $Res Function(BGridConfig) _then) =
      _$BGridConfigCopyWithImpl;
  @useResult
  $Res call(
      {int? columns,
      int? xs,
      int? sm,
      int? md,
      int? lg,
      int? xl,
      int? xxl,
      double? gutter,
      String? className});
}

/// @nodoc
class _$BGridConfigCopyWithImpl<$Res> implements $BGridConfigCopyWith<$Res> {
  _$BGridConfigCopyWithImpl(this._self, this._then);

  final BGridConfig _self;
  final $Res Function(BGridConfig) _then;

  /// Create a copy of BGridConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? columns = freezed,
    Object? xs = freezed,
    Object? sm = freezed,
    Object? md = freezed,
    Object? lg = freezed,
    Object? xl = freezed,
    Object? xxl = freezed,
    Object? gutter = freezed,
    Object? className = freezed,
  }) {
    return _then(_self.copyWith(
      columns: freezed == columns
          ? _self.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
      xs: freezed == xs
          ? _self.xs
          : xs // ignore: cast_nullable_to_non_nullable
              as int?,
      sm: freezed == sm
          ? _self.sm
          : sm // ignore: cast_nullable_to_non_nullable
              as int?,
      md: freezed == md
          ? _self.md
          : md // ignore: cast_nullable_to_non_nullable
              as int?,
      lg: freezed == lg
          ? _self.lg
          : lg // ignore: cast_nullable_to_non_nullable
              as int?,
      xl: freezed == xl
          ? _self.xl
          : xl // ignore: cast_nullable_to_non_nullable
              as int?,
      xxl: freezed == xxl
          ? _self.xxl
          : xxl // ignore: cast_nullable_to_non_nullable
              as int?,
      gutter: freezed == gutter
          ? _self.gutter
          : gutter // ignore: cast_nullable_to_non_nullable
              as double?,
      className: freezed == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BGridConfig].
extension BGridConfigPatterns on BGridConfig {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BGridConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BGridConfig() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BGridConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BGridConfig():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BGridConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BGridConfig() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? columns, int? xs, int? sm, int? md, int? lg, int? xl,
            int? xxl, double? gutter, String? className)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BGridConfig() when $default != null:
        return $default(_that.columns, _that.xs, _that.sm, _that.md, _that.lg,
            _that.xl, _that.xxl, _that.gutter, _that.className);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? columns, int? xs, int? sm, int? md, int? lg, int? xl,
            int? xxl, double? gutter, String? className)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BGridConfig():
        return $default(_that.columns, _that.xs, _that.sm, _that.md, _that.lg,
            _that.xl, _that.xxl, _that.gutter, _that.className);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? columns, int? xs, int? sm, int? md, int? lg, int? xl,
            int? xxl, double? gutter, String? className)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BGridConfig() when $default != null:
        return $default(_that.columns, _that.xs, _that.sm, _that.md, _that.lg,
            _that.xl, _that.xxl, _that.gutter, _that.className);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BGridConfig implements BGridConfig {
  const _BGridConfig(
      {this.columns,
      this.xs,
      this.sm,
      this.md,
      this.lg,
      this.xl,
      this.xxl,
      this.gutter,
      this.className});

  @override
  final int? columns;
  @override
  final int? xs;
  @override
  final int? sm;
  @override
  final int? md;
  @override
  final int? lg;
  @override
  final int? xl;
  @override
  final int? xxl;
  @override
  final double? gutter;
  @override
  final String? className;

  /// Create a copy of BGridConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BGridConfigCopyWith<_BGridConfig> get copyWith =>
      __$BGridConfigCopyWithImpl<_BGridConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BGridConfig &&
            (identical(other.columns, columns) || other.columns == columns) &&
            (identical(other.xs, xs) || other.xs == xs) &&
            (identical(other.sm, sm) || other.sm == sm) &&
            (identical(other.md, md) || other.md == md) &&
            (identical(other.lg, lg) || other.lg == lg) &&
            (identical(other.xl, xl) || other.xl == xl) &&
            (identical(other.xxl, xxl) || other.xxl == xxl) &&
            (identical(other.gutter, gutter) || other.gutter == gutter) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, columns, xs, sm, md, lg, xl, xxl, gutter, className);

  @override
  String toString() {
    return 'BGridConfig(columns: $columns, xs: $xs, sm: $sm, md: $md, lg: $lg, xl: $xl, xxl: $xxl, gutter: $gutter, className: $className)';
  }
}

/// @nodoc
abstract mixin class _$BGridConfigCopyWith<$Res>
    implements $BGridConfigCopyWith<$Res> {
  factory _$BGridConfigCopyWith(
          _BGridConfig value, $Res Function(_BGridConfig) _then) =
      __$BGridConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? columns,
      int? xs,
      int? sm,
      int? md,
      int? lg,
      int? xl,
      int? xxl,
      double? gutter,
      String? className});
}

/// @nodoc
class __$BGridConfigCopyWithImpl<$Res> implements _$BGridConfigCopyWith<$Res> {
  __$BGridConfigCopyWithImpl(this._self, this._then);

  final _BGridConfig _self;
  final $Res Function(_BGridConfig) _then;

  /// Create a copy of BGridConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? columns = freezed,
    Object? xs = freezed,
    Object? sm = freezed,
    Object? md = freezed,
    Object? lg = freezed,
    Object? xl = freezed,
    Object? xxl = freezed,
    Object? gutter = freezed,
    Object? className = freezed,
  }) {
    return _then(_BGridConfig(
      columns: freezed == columns
          ? _self.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as int?,
      xs: freezed == xs
          ? _self.xs
          : xs // ignore: cast_nullable_to_non_nullable
              as int?,
      sm: freezed == sm
          ? _self.sm
          : sm // ignore: cast_nullable_to_non_nullable
              as int?,
      md: freezed == md
          ? _self.md
          : md // ignore: cast_nullable_to_non_nullable
              as int?,
      lg: freezed == lg
          ? _self.lg
          : lg // ignore: cast_nullable_to_non_nullable
              as int?,
      xl: freezed == xl
          ? _self.xl
          : xl // ignore: cast_nullable_to_non_nullable
              as int?,
      xxl: freezed == xxl
          ? _self.xxl
          : xxl // ignore: cast_nullable_to_non_nullable
              as int?,
      gutter: freezed == gutter
          ? _self.gutter
          : gutter // ignore: cast_nullable_to_non_nullable
              as double?,
      className: freezed == className
          ? _self.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BFormFieldCondition {
  String get fieldKey;
  String get operator;
  dynamic get value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BFormFieldConditionCopyWith<BFormFieldCondition> get copyWith =>
      _$BFormFieldConditionCopyWithImpl<BFormFieldCondition>(
          this as BFormFieldCondition, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BFormFieldCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BFormFieldConditionCopyWith<$Res> {
  factory $BFormFieldConditionCopyWith(
          BFormFieldCondition value, $Res Function(BFormFieldCondition) _then) =
      _$BFormFieldConditionCopyWithImpl;
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BFormFieldConditionCopyWithImpl<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  _$BFormFieldConditionCopyWithImpl(this._self, this._then);

  final BFormFieldCondition _self;
  final $Res Function(BFormFieldCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [BFormFieldCondition].
extension BFormFieldConditionPatterns on BFormFieldCondition {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BShowCondition value)? show,
    TResult Function(BHideCondition value)? hide,
    TResult Function(BEnableCondition value)? enable,
    TResult Function(BDisableCondition value)? disable,
    TResult Function(BRequiredCondition value)? required,
    TResult Function(BClearCondition value)? clear,
    TResult Function(BSetValueCondition value)? setValue,
    TResult Function(BReplaceFormCondition value)? replaceForm,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition() when show != null:
        return show(_that);
      case BHideCondition() when hide != null:
        return hide(_that);
      case BEnableCondition() when enable != null:
        return enable(_that);
      case BDisableCondition() when disable != null:
        return disable(_that);
      case BRequiredCondition() when required != null:
        return required(_that);
      case BClearCondition() when clear != null:
        return clear(_that);
      case BSetValueCondition() when setValue != null:
        return setValue(_that);
      case BReplaceFormCondition() when replaceForm != null:
        return replaceForm(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BShowCondition value) show,
    required TResult Function(BHideCondition value) hide,
    required TResult Function(BEnableCondition value) enable,
    required TResult Function(BDisableCondition value) disable,
    required TResult Function(BRequiredCondition value) required,
    required TResult Function(BClearCondition value) clear,
    required TResult Function(BSetValueCondition value) setValue,
    required TResult Function(BReplaceFormCondition value) replaceForm,
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition():
        return show(_that);
      case BHideCondition():
        return hide(_that);
      case BEnableCondition():
        return enable(_that);
      case BDisableCondition():
        return disable(_that);
      case BRequiredCondition():
        return required(_that);
      case BClearCondition():
        return clear(_that);
      case BSetValueCondition():
        return setValue(_that);
      case BReplaceFormCondition():
        return replaceForm(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BShowCondition value)? show,
    TResult? Function(BHideCondition value)? hide,
    TResult? Function(BEnableCondition value)? enable,
    TResult? Function(BDisableCondition value)? disable,
    TResult? Function(BRequiredCondition value)? required,
    TResult? Function(BClearCondition value)? clear,
    TResult? Function(BSetValueCondition value)? setValue,
    TResult? Function(BReplaceFormCondition value)? replaceForm,
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition() when show != null:
        return show(_that);
      case BHideCondition() when hide != null:
        return hide(_that);
      case BEnableCondition() when enable != null:
        return enable(_that);
      case BDisableCondition() when disable != null:
        return disable(_that);
      case BRequiredCondition() when required != null:
        return required(_that);
      case BClearCondition() when clear != null:
        return clear(_that);
      case BSetValueCondition() when setValue != null:
        return setValue(_that);
      case BReplaceFormCondition() when replaceForm != null:
        return replaceForm(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fieldKey, String operator, dynamic value)? show,
    TResult Function(String fieldKey, String operator, dynamic value)? hide,
    TResult Function(String fieldKey, String operator, dynamic value)? enable,
    TResult Function(String fieldKey, String operator, dynamic value)? disable,
    TResult Function(String fieldKey, String operator, dynamic value)? required,
    TResult Function(String fieldKey, String operator, dynamic value)? clear,
    TResult Function(
            String fieldKey, String operator, dynamic value, dynamic newValue)?
        setValue,
    TResult Function(String fieldKey, String operator, dynamic value,
            List<BFormFieldType> newFormFields)?
        replaceForm,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition() when show != null:
        return show(_that.fieldKey, _that.operator, _that.value);
      case BHideCondition() when hide != null:
        return hide(_that.fieldKey, _that.operator, _that.value);
      case BEnableCondition() when enable != null:
        return enable(_that.fieldKey, _that.operator, _that.value);
      case BDisableCondition() when disable != null:
        return disable(_that.fieldKey, _that.operator, _that.value);
      case BRequiredCondition() when required != null:
        return required(_that.fieldKey, _that.operator, _that.value);
      case BClearCondition() when clear != null:
        return clear(_that.fieldKey, _that.operator, _that.value);
      case BSetValueCondition() when setValue != null:
        return setValue(
            _that.fieldKey, _that.operator, _that.value, _that.newValue);
      case BReplaceFormCondition() when replaceForm != null:
        return replaceForm(
            _that.fieldKey, _that.operator, _that.value, _that.newFormFields);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fieldKey, String operator, dynamic value)
        show,
    required TResult Function(String fieldKey, String operator, dynamic value)
        hide,
    required TResult Function(String fieldKey, String operator, dynamic value)
        enable,
    required TResult Function(String fieldKey, String operator, dynamic value)
        disable,
    required TResult Function(String fieldKey, String operator, dynamic value)
        required,
    required TResult Function(String fieldKey, String operator, dynamic value)
        clear,
    required TResult Function(
            String fieldKey, String operator, dynamic value, dynamic newValue)
        setValue,
    required TResult Function(String fieldKey, String operator, dynamic value,
            List<BFormFieldType> newFormFields)
        replaceForm,
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition():
        return show(_that.fieldKey, _that.operator, _that.value);
      case BHideCondition():
        return hide(_that.fieldKey, _that.operator, _that.value);
      case BEnableCondition():
        return enable(_that.fieldKey, _that.operator, _that.value);
      case BDisableCondition():
        return disable(_that.fieldKey, _that.operator, _that.value);
      case BRequiredCondition():
        return required(_that.fieldKey, _that.operator, _that.value);
      case BClearCondition():
        return clear(_that.fieldKey, _that.operator, _that.value);
      case BSetValueCondition():
        return setValue(
            _that.fieldKey, _that.operator, _that.value, _that.newValue);
      case BReplaceFormCondition():
        return replaceForm(
            _that.fieldKey, _that.operator, _that.value, _that.newFormFields);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fieldKey, String operator, dynamic value)? show,
    TResult? Function(String fieldKey, String operator, dynamic value)? hide,
    TResult? Function(String fieldKey, String operator, dynamic value)? enable,
    TResult? Function(String fieldKey, String operator, dynamic value)? disable,
    TResult? Function(String fieldKey, String operator, dynamic value)?
        required,
    TResult? Function(String fieldKey, String operator, dynamic value)? clear,
    TResult? Function(
            String fieldKey, String operator, dynamic value, dynamic newValue)?
        setValue,
    TResult? Function(String fieldKey, String operator, dynamic value,
            List<BFormFieldType> newFormFields)?
        replaceForm,
  }) {
    final _that = this;
    switch (_that) {
      case BShowCondition() when show != null:
        return show(_that.fieldKey, _that.operator, _that.value);
      case BHideCondition() when hide != null:
        return hide(_that.fieldKey, _that.operator, _that.value);
      case BEnableCondition() when enable != null:
        return enable(_that.fieldKey, _that.operator, _that.value);
      case BDisableCondition() when disable != null:
        return disable(_that.fieldKey, _that.operator, _that.value);
      case BRequiredCondition() when required != null:
        return required(_that.fieldKey, _that.operator, _that.value);
      case BClearCondition() when clear != null:
        return clear(_that.fieldKey, _that.operator, _that.value);
      case BSetValueCondition() when setValue != null:
        return setValue(
            _that.fieldKey, _that.operator, _that.value, _that.newValue);
      case BReplaceFormCondition() when replaceForm != null:
        return replaceForm(
            _that.fieldKey, _that.operator, _that.value, _that.newFormFields);
      case _:
        return null;
    }
  }
}

/// @nodoc

class BShowCondition implements BFormFieldCondition {
  const BShowCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BShowConditionCopyWith<BShowCondition> get copyWith =>
      _$BShowConditionCopyWithImpl<BShowCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BShowCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.show(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BShowConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BShowConditionCopyWith(
          BShowCondition value, $Res Function(BShowCondition) _then) =
      _$BShowConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BShowConditionCopyWithImpl<$Res>
    implements $BShowConditionCopyWith<$Res> {
  _$BShowConditionCopyWithImpl(this._self, this._then);

  final BShowCondition _self;
  final $Res Function(BShowCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BShowCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BHideCondition implements BFormFieldCondition {
  const BHideCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BHideConditionCopyWith<BHideCondition> get copyWith =>
      _$BHideConditionCopyWithImpl<BHideCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BHideCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.hide(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BHideConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BHideConditionCopyWith(
          BHideCondition value, $Res Function(BHideCondition) _then) =
      _$BHideConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BHideConditionCopyWithImpl<$Res>
    implements $BHideConditionCopyWith<$Res> {
  _$BHideConditionCopyWithImpl(this._self, this._then);

  final BHideCondition _self;
  final $Res Function(BHideCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BHideCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BEnableCondition implements BFormFieldCondition {
  const BEnableCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BEnableConditionCopyWith<BEnableCondition> get copyWith =>
      _$BEnableConditionCopyWithImpl<BEnableCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BEnableCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.enable(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BEnableConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BEnableConditionCopyWith(
          BEnableCondition value, $Res Function(BEnableCondition) _then) =
      _$BEnableConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BEnableConditionCopyWithImpl<$Res>
    implements $BEnableConditionCopyWith<$Res> {
  _$BEnableConditionCopyWithImpl(this._self, this._then);

  final BEnableCondition _self;
  final $Res Function(BEnableCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BEnableCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BDisableCondition implements BFormFieldCondition {
  const BDisableCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BDisableConditionCopyWith<BDisableCondition> get copyWith =>
      _$BDisableConditionCopyWithImpl<BDisableCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BDisableCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.disable(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BDisableConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BDisableConditionCopyWith(
          BDisableCondition value, $Res Function(BDisableCondition) _then) =
      _$BDisableConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BDisableConditionCopyWithImpl<$Res>
    implements $BDisableConditionCopyWith<$Res> {
  _$BDisableConditionCopyWithImpl(this._self, this._then);

  final BDisableCondition _self;
  final $Res Function(BDisableCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BDisableCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BRequiredCondition implements BFormFieldCondition {
  const BRequiredCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BRequiredConditionCopyWith<BRequiredCondition> get copyWith =>
      _$BRequiredConditionCopyWithImpl<BRequiredCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BRequiredCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.required(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BRequiredConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BRequiredConditionCopyWith(
          BRequiredCondition value, $Res Function(BRequiredCondition) _then) =
      _$BRequiredConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BRequiredConditionCopyWithImpl<$Res>
    implements $BRequiredConditionCopyWith<$Res> {
  _$BRequiredConditionCopyWithImpl(this._self, this._then);

  final BRequiredCondition _self;
  final $Res Function(BRequiredCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BRequiredCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BClearCondition implements BFormFieldCondition {
  const BClearCondition(
      {required this.fieldKey, required this.operator, required this.value});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BClearConditionCopyWith<BClearCondition> get copyWith =>
      _$BClearConditionCopyWithImpl<BClearCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BClearCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey, operator,
      const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'BFormFieldCondition.clear(fieldKey: $fieldKey, operator: $operator, value: $value)';
  }
}

/// @nodoc
abstract mixin class $BClearConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BClearConditionCopyWith(
          BClearCondition value, $Res Function(BClearCondition) _then) =
      _$BClearConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String fieldKey, String operator, dynamic value});
}

/// @nodoc
class _$BClearConditionCopyWithImpl<$Res>
    implements $BClearConditionCopyWith<$Res> {
  _$BClearConditionCopyWithImpl(this._self, this._then);

  final BClearCondition _self;
  final $Res Function(BClearCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
  }) {
    return _then(BClearCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BSetValueCondition implements BFormFieldCondition {
  const BSetValueCondition(
      {required this.fieldKey,
      required this.operator,
      required this.value,
      required this.newValue});

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;
  final dynamic newValue;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BSetValueConditionCopyWith<BSetValueCondition> get copyWith =>
      _$BSetValueConditionCopyWithImpl<BSetValueCondition>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BSetValueCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.newValue, newValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fieldKey,
      operator,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(newValue));

  @override
  String toString() {
    return 'BFormFieldCondition.setValue(fieldKey: $fieldKey, operator: $operator, value: $value, newValue: $newValue)';
  }
}

/// @nodoc
abstract mixin class $BSetValueConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BSetValueConditionCopyWith(
          BSetValueCondition value, $Res Function(BSetValueCondition) _then) =
      _$BSetValueConditionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String fieldKey, String operator, dynamic value, dynamic newValue});
}

/// @nodoc
class _$BSetValueConditionCopyWithImpl<$Res>
    implements $BSetValueConditionCopyWith<$Res> {
  _$BSetValueConditionCopyWithImpl(this._self, this._then);

  final BSetValueCondition _self;
  final $Res Function(BSetValueCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
    Object? newValue = freezed,
  }) {
    return _then(BSetValueCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      newValue: freezed == newValue
          ? _self.newValue
          : newValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class BReplaceFormCondition implements BFormFieldCondition {
  const BReplaceFormCondition(
      {required this.fieldKey,
      required this.operator,
      required this.value,
      required final List<BFormFieldType> newFormFields})
      : _newFormFields = newFormFields;

  @override
  final String fieldKey;
  @override
  final String operator;
  @override
  final dynamic value;
  final List<BFormFieldType> _newFormFields;
  List<BFormFieldType> get newFormFields {
    if (_newFormFields is EqualUnmodifiableListView) return _newFormFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newFormFields);
  }

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BReplaceFormConditionCopyWith<BReplaceFormCondition> get copyWith =>
      _$BReplaceFormConditionCopyWithImpl<BReplaceFormCondition>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BReplaceFormCondition &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._newFormFields, _newFormFields));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fieldKey,
      operator,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_newFormFields));

  @override
  String toString() {
    return 'BFormFieldCondition.replaceForm(fieldKey: $fieldKey, operator: $operator, value: $value, newFormFields: $newFormFields)';
  }
}

/// @nodoc
abstract mixin class $BReplaceFormConditionCopyWith<$Res>
    implements $BFormFieldConditionCopyWith<$Res> {
  factory $BReplaceFormConditionCopyWith(BReplaceFormCondition value,
          $Res Function(BReplaceFormCondition) _then) =
      _$BReplaceFormConditionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String fieldKey,
      String operator,
      dynamic value,
      List<BFormFieldType> newFormFields});
}

/// @nodoc
class _$BReplaceFormConditionCopyWithImpl<$Res>
    implements $BReplaceFormConditionCopyWith<$Res> {
  _$BReplaceFormConditionCopyWithImpl(this._self, this._then);

  final BReplaceFormCondition _self;
  final $Res Function(BReplaceFormCondition) _then;

  /// Create a copy of BFormFieldCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
    Object? operator = null,
    Object? value = freezed,
    Object? newFormFields = null,
  }) {
    return _then(BReplaceFormCondition(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      newFormFields: null == newFormFields
          ? _self._newFormFields
          : newFormFields // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldType>,
    ));
  }
}

/// @nodoc
mixin _$BFormAction {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BFormAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BFormAction()';
  }
}

/// @nodoc
class $BFormActionCopyWith<$Res> {
  $BFormActionCopyWith(BFormAction _, $Res Function(BFormAction) __);
}

/// Adds pattern-matching-related methods to [BFormAction].
extension BFormActionPatterns on BFormAction {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BUpdateFieldsAction value)? updateFields,
    TResult Function(BClearFieldAction value)? clearField,
    TResult Function(BEnableFieldAction value)? enableField,
    TResult Function(BDisableFieldAction value)? disableField,
    TResult Function(BShowFieldAction value)? showField,
    TResult Function(BHideFieldAction value)? hideField,
    TResult Function(BSetRequiredAction value)? setRequired,
    TResult Function(BSetOptionalAction value)? setOptional,
    TResult Function(BReplaceFormAction value)? replaceForm,
    TResult Function(BValidateFieldAction value)? validateField,
    TResult Function(BValidateFormAction value)? validateForm,
    TResult Function(BResetFormAction value)? resetForm,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction() when updateFields != null:
        return updateFields(_that);
      case BClearFieldAction() when clearField != null:
        return clearField(_that);
      case BEnableFieldAction() when enableField != null:
        return enableField(_that);
      case BDisableFieldAction() when disableField != null:
        return disableField(_that);
      case BShowFieldAction() when showField != null:
        return showField(_that);
      case BHideFieldAction() when hideField != null:
        return hideField(_that);
      case BSetRequiredAction() when setRequired != null:
        return setRequired(_that);
      case BSetOptionalAction() when setOptional != null:
        return setOptional(_that);
      case BReplaceFormAction() when replaceForm != null:
        return replaceForm(_that);
      case BValidateFieldAction() when validateField != null:
        return validateField(_that);
      case BValidateFormAction() when validateForm != null:
        return validateForm(_that);
      case BResetFormAction() when resetForm != null:
        return resetForm(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BUpdateFieldsAction value) updateFields,
    required TResult Function(BClearFieldAction value) clearField,
    required TResult Function(BEnableFieldAction value) enableField,
    required TResult Function(BDisableFieldAction value) disableField,
    required TResult Function(BShowFieldAction value) showField,
    required TResult Function(BHideFieldAction value) hideField,
    required TResult Function(BSetRequiredAction value) setRequired,
    required TResult Function(BSetOptionalAction value) setOptional,
    required TResult Function(BReplaceFormAction value) replaceForm,
    required TResult Function(BValidateFieldAction value) validateField,
    required TResult Function(BValidateFormAction value) validateForm,
    required TResult Function(BResetFormAction value) resetForm,
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction():
        return updateFields(_that);
      case BClearFieldAction():
        return clearField(_that);
      case BEnableFieldAction():
        return enableField(_that);
      case BDisableFieldAction():
        return disableField(_that);
      case BShowFieldAction():
        return showField(_that);
      case BHideFieldAction():
        return hideField(_that);
      case BSetRequiredAction():
        return setRequired(_that);
      case BSetOptionalAction():
        return setOptional(_that);
      case BReplaceFormAction():
        return replaceForm(_that);
      case BValidateFieldAction():
        return validateField(_that);
      case BValidateFormAction():
        return validateForm(_that);
      case BResetFormAction():
        return resetForm(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BUpdateFieldsAction value)? updateFields,
    TResult? Function(BClearFieldAction value)? clearField,
    TResult? Function(BEnableFieldAction value)? enableField,
    TResult? Function(BDisableFieldAction value)? disableField,
    TResult? Function(BShowFieldAction value)? showField,
    TResult? Function(BHideFieldAction value)? hideField,
    TResult? Function(BSetRequiredAction value)? setRequired,
    TResult? Function(BSetOptionalAction value)? setOptional,
    TResult? Function(BReplaceFormAction value)? replaceForm,
    TResult? Function(BValidateFieldAction value)? validateField,
    TResult? Function(BValidateFormAction value)? validateForm,
    TResult? Function(BResetFormAction value)? resetForm,
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction() when updateFields != null:
        return updateFields(_that);
      case BClearFieldAction() when clearField != null:
        return clearField(_that);
      case BEnableFieldAction() when enableField != null:
        return enableField(_that);
      case BDisableFieldAction() when disableField != null:
        return disableField(_that);
      case BShowFieldAction() when showField != null:
        return showField(_that);
      case BHideFieldAction() when hideField != null:
        return hideField(_that);
      case BSetRequiredAction() when setRequired != null:
        return setRequired(_that);
      case BSetOptionalAction() when setOptional != null:
        return setOptional(_that);
      case BReplaceFormAction() when replaceForm != null:
        return replaceForm(_that);
      case BValidateFieldAction() when validateField != null:
        return validateField(_that);
      case BValidateFormAction() when validateForm != null:
        return validateForm(_that);
      case BResetFormAction() when resetForm != null:
        return resetForm(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<BFormFieldType> fields)? updateFields,
    TResult Function(String fieldKey)? clearField,
    TResult Function(String fieldKey)? enableField,
    TResult Function(String fieldKey)? disableField,
    TResult Function(String fieldKey)? showField,
    TResult Function(String fieldKey)? hideField,
    TResult Function(String fieldKey)? setRequired,
    TResult Function(String fieldKey)? setOptional,
    TResult Function(List<BFormFieldType> newFields)? replaceForm,
    TResult Function(String fieldKey)? validateField,
    TResult Function()? validateForm,
    TResult Function()? resetForm,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction() when updateFields != null:
        return updateFields(_that.fields);
      case BClearFieldAction() when clearField != null:
        return clearField(_that.fieldKey);
      case BEnableFieldAction() when enableField != null:
        return enableField(_that.fieldKey);
      case BDisableFieldAction() when disableField != null:
        return disableField(_that.fieldKey);
      case BShowFieldAction() when showField != null:
        return showField(_that.fieldKey);
      case BHideFieldAction() when hideField != null:
        return hideField(_that.fieldKey);
      case BSetRequiredAction() when setRequired != null:
        return setRequired(_that.fieldKey);
      case BSetOptionalAction() when setOptional != null:
        return setOptional(_that.fieldKey);
      case BReplaceFormAction() when replaceForm != null:
        return replaceForm(_that.newFields);
      case BValidateFieldAction() when validateField != null:
        return validateField(_that.fieldKey);
      case BValidateFormAction() when validateForm != null:
        return validateForm();
      case BResetFormAction() when resetForm != null:
        return resetForm();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<BFormFieldType> fields) updateFields,
    required TResult Function(String fieldKey) clearField,
    required TResult Function(String fieldKey) enableField,
    required TResult Function(String fieldKey) disableField,
    required TResult Function(String fieldKey) showField,
    required TResult Function(String fieldKey) hideField,
    required TResult Function(String fieldKey) setRequired,
    required TResult Function(String fieldKey) setOptional,
    required TResult Function(List<BFormFieldType> newFields) replaceForm,
    required TResult Function(String fieldKey) validateField,
    required TResult Function() validateForm,
    required TResult Function() resetForm,
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction():
        return updateFields(_that.fields);
      case BClearFieldAction():
        return clearField(_that.fieldKey);
      case BEnableFieldAction():
        return enableField(_that.fieldKey);
      case BDisableFieldAction():
        return disableField(_that.fieldKey);
      case BShowFieldAction():
        return showField(_that.fieldKey);
      case BHideFieldAction():
        return hideField(_that.fieldKey);
      case BSetRequiredAction():
        return setRequired(_that.fieldKey);
      case BSetOptionalAction():
        return setOptional(_that.fieldKey);
      case BReplaceFormAction():
        return replaceForm(_that.newFields);
      case BValidateFieldAction():
        return validateField(_that.fieldKey);
      case BValidateFormAction():
        return validateForm();
      case BResetFormAction():
        return resetForm();
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<BFormFieldType> fields)? updateFields,
    TResult? Function(String fieldKey)? clearField,
    TResult? Function(String fieldKey)? enableField,
    TResult? Function(String fieldKey)? disableField,
    TResult? Function(String fieldKey)? showField,
    TResult? Function(String fieldKey)? hideField,
    TResult? Function(String fieldKey)? setRequired,
    TResult? Function(String fieldKey)? setOptional,
    TResult? Function(List<BFormFieldType> newFields)? replaceForm,
    TResult? Function(String fieldKey)? validateField,
    TResult? Function()? validateForm,
    TResult? Function()? resetForm,
  }) {
    final _that = this;
    switch (_that) {
      case BUpdateFieldsAction() when updateFields != null:
        return updateFields(_that.fields);
      case BClearFieldAction() when clearField != null:
        return clearField(_that.fieldKey);
      case BEnableFieldAction() when enableField != null:
        return enableField(_that.fieldKey);
      case BDisableFieldAction() when disableField != null:
        return disableField(_that.fieldKey);
      case BShowFieldAction() when showField != null:
        return showField(_that.fieldKey);
      case BHideFieldAction() when hideField != null:
        return hideField(_that.fieldKey);
      case BSetRequiredAction() when setRequired != null:
        return setRequired(_that.fieldKey);
      case BSetOptionalAction() when setOptional != null:
        return setOptional(_that.fieldKey);
      case BReplaceFormAction() when replaceForm != null:
        return replaceForm(_that.newFields);
      case BValidateFieldAction() when validateField != null:
        return validateField(_that.fieldKey);
      case BValidateFormAction() when validateForm != null:
        return validateForm();
      case BResetFormAction() when resetForm != null:
        return resetForm();
      case _:
        return null;
    }
  }
}

/// @nodoc

class BUpdateFieldsAction implements BFormAction {
  const BUpdateFieldsAction({required final List<BFormFieldType> fields})
      : _fields = fields;

  final List<BFormFieldType> _fields;
  List<BFormFieldType> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BUpdateFieldsActionCopyWith<BUpdateFieldsAction> get copyWith =>
      _$BUpdateFieldsActionCopyWithImpl<BUpdateFieldsAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BUpdateFieldsAction &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @override
  String toString() {
    return 'BFormAction.updateFields(fields: $fields)';
  }
}

/// @nodoc
abstract mixin class $BUpdateFieldsActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BUpdateFieldsActionCopyWith(
          BUpdateFieldsAction value, $Res Function(BUpdateFieldsAction) _then) =
      _$BUpdateFieldsActionCopyWithImpl;
  @useResult
  $Res call({List<BFormFieldType> fields});
}

/// @nodoc
class _$BUpdateFieldsActionCopyWithImpl<$Res>
    implements $BUpdateFieldsActionCopyWith<$Res> {
  _$BUpdateFieldsActionCopyWithImpl(this._self, this._then);

  final BUpdateFieldsAction _self;
  final $Res Function(BUpdateFieldsAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fields = null,
  }) {
    return _then(BUpdateFieldsAction(
      fields: null == fields
          ? _self._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldType>,
    ));
  }
}

/// @nodoc

class BClearFieldAction implements BFormAction {
  const BClearFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BClearFieldActionCopyWith<BClearFieldAction> get copyWith =>
      _$BClearFieldActionCopyWithImpl<BClearFieldAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BClearFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.clearField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BClearFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BClearFieldActionCopyWith(
          BClearFieldAction value, $Res Function(BClearFieldAction) _then) =
      _$BClearFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BClearFieldActionCopyWithImpl<$Res>
    implements $BClearFieldActionCopyWith<$Res> {
  _$BClearFieldActionCopyWithImpl(this._self, this._then);

  final BClearFieldAction _self;
  final $Res Function(BClearFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BClearFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BEnableFieldAction implements BFormAction {
  const BEnableFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BEnableFieldActionCopyWith<BEnableFieldAction> get copyWith =>
      _$BEnableFieldActionCopyWithImpl<BEnableFieldAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BEnableFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.enableField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BEnableFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BEnableFieldActionCopyWith(
          BEnableFieldAction value, $Res Function(BEnableFieldAction) _then) =
      _$BEnableFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BEnableFieldActionCopyWithImpl<$Res>
    implements $BEnableFieldActionCopyWith<$Res> {
  _$BEnableFieldActionCopyWithImpl(this._self, this._then);

  final BEnableFieldAction _self;
  final $Res Function(BEnableFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BEnableFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BDisableFieldAction implements BFormAction {
  const BDisableFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BDisableFieldActionCopyWith<BDisableFieldAction> get copyWith =>
      _$BDisableFieldActionCopyWithImpl<BDisableFieldAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BDisableFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.disableField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BDisableFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BDisableFieldActionCopyWith(
          BDisableFieldAction value, $Res Function(BDisableFieldAction) _then) =
      _$BDisableFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BDisableFieldActionCopyWithImpl<$Res>
    implements $BDisableFieldActionCopyWith<$Res> {
  _$BDisableFieldActionCopyWithImpl(this._self, this._then);

  final BDisableFieldAction _self;
  final $Res Function(BDisableFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BDisableFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BShowFieldAction implements BFormAction {
  const BShowFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BShowFieldActionCopyWith<BShowFieldAction> get copyWith =>
      _$BShowFieldActionCopyWithImpl<BShowFieldAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BShowFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.showField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BShowFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BShowFieldActionCopyWith(
          BShowFieldAction value, $Res Function(BShowFieldAction) _then) =
      _$BShowFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BShowFieldActionCopyWithImpl<$Res>
    implements $BShowFieldActionCopyWith<$Res> {
  _$BShowFieldActionCopyWithImpl(this._self, this._then);

  final BShowFieldAction _self;
  final $Res Function(BShowFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BShowFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BHideFieldAction implements BFormAction {
  const BHideFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BHideFieldActionCopyWith<BHideFieldAction> get copyWith =>
      _$BHideFieldActionCopyWithImpl<BHideFieldAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BHideFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.hideField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BHideFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BHideFieldActionCopyWith(
          BHideFieldAction value, $Res Function(BHideFieldAction) _then) =
      _$BHideFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BHideFieldActionCopyWithImpl<$Res>
    implements $BHideFieldActionCopyWith<$Res> {
  _$BHideFieldActionCopyWithImpl(this._self, this._then);

  final BHideFieldAction _self;
  final $Res Function(BHideFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BHideFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BSetRequiredAction implements BFormAction {
  const BSetRequiredAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BSetRequiredActionCopyWith<BSetRequiredAction> get copyWith =>
      _$BSetRequiredActionCopyWithImpl<BSetRequiredAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BSetRequiredAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.setRequired(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BSetRequiredActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BSetRequiredActionCopyWith(
          BSetRequiredAction value, $Res Function(BSetRequiredAction) _then) =
      _$BSetRequiredActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BSetRequiredActionCopyWithImpl<$Res>
    implements $BSetRequiredActionCopyWith<$Res> {
  _$BSetRequiredActionCopyWithImpl(this._self, this._then);

  final BSetRequiredAction _self;
  final $Res Function(BSetRequiredAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BSetRequiredAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BSetOptionalAction implements BFormAction {
  const BSetOptionalAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BSetOptionalActionCopyWith<BSetOptionalAction> get copyWith =>
      _$BSetOptionalActionCopyWithImpl<BSetOptionalAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BSetOptionalAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.setOptional(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BSetOptionalActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BSetOptionalActionCopyWith(
          BSetOptionalAction value, $Res Function(BSetOptionalAction) _then) =
      _$BSetOptionalActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BSetOptionalActionCopyWithImpl<$Res>
    implements $BSetOptionalActionCopyWith<$Res> {
  _$BSetOptionalActionCopyWithImpl(this._self, this._then);

  final BSetOptionalAction _self;
  final $Res Function(BSetOptionalAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BSetOptionalAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BReplaceFormAction implements BFormAction {
  const BReplaceFormAction({required final List<BFormFieldType> newFields})
      : _newFields = newFields;

  final List<BFormFieldType> _newFields;
  List<BFormFieldType> get newFields {
    if (_newFields is EqualUnmodifiableListView) return _newFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newFields);
  }

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BReplaceFormActionCopyWith<BReplaceFormAction> get copyWith =>
      _$BReplaceFormActionCopyWithImpl<BReplaceFormAction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BReplaceFormAction &&
            const DeepCollectionEquality()
                .equals(other._newFields, _newFields));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_newFields));

  @override
  String toString() {
    return 'BFormAction.replaceForm(newFields: $newFields)';
  }
}

/// @nodoc
abstract mixin class $BReplaceFormActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BReplaceFormActionCopyWith(
          BReplaceFormAction value, $Res Function(BReplaceFormAction) _then) =
      _$BReplaceFormActionCopyWithImpl;
  @useResult
  $Res call({List<BFormFieldType> newFields});
}

/// @nodoc
class _$BReplaceFormActionCopyWithImpl<$Res>
    implements $BReplaceFormActionCopyWith<$Res> {
  _$BReplaceFormActionCopyWithImpl(this._self, this._then);

  final BReplaceFormAction _self;
  final $Res Function(BReplaceFormAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newFields = null,
  }) {
    return _then(BReplaceFormAction(
      newFields: null == newFields
          ? _self._newFields
          : newFields // ignore: cast_nullable_to_non_nullable
              as List<BFormFieldType>,
    ));
  }
}

/// @nodoc

class BValidateFieldAction implements BFormAction {
  const BValidateFieldAction({required this.fieldKey});

  final String fieldKey;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BValidateFieldActionCopyWith<BValidateFieldAction> get copyWith =>
      _$BValidateFieldActionCopyWithImpl<BValidateFieldAction>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BValidateFieldAction &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fieldKey);

  @override
  String toString() {
    return 'BFormAction.validateField(fieldKey: $fieldKey)';
  }
}

/// @nodoc
abstract mixin class $BValidateFieldActionCopyWith<$Res>
    implements $BFormActionCopyWith<$Res> {
  factory $BValidateFieldActionCopyWith(BValidateFieldAction value,
          $Res Function(BValidateFieldAction) _then) =
      _$BValidateFieldActionCopyWithImpl;
  @useResult
  $Res call({String fieldKey});
}

/// @nodoc
class _$BValidateFieldActionCopyWithImpl<$Res>
    implements $BValidateFieldActionCopyWith<$Res> {
  _$BValidateFieldActionCopyWithImpl(this._self, this._then);

  final BValidateFieldAction _self;
  final $Res Function(BValidateFieldAction) _then;

  /// Create a copy of BFormAction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? fieldKey = null,
  }) {
    return _then(BValidateFieldAction(
      fieldKey: null == fieldKey
          ? _self.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class BValidateFormAction implements BFormAction {
  const BValidateFormAction();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BValidateFormAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BFormAction.validateForm()';
  }
}

/// @nodoc

class BResetFormAction implements BFormAction {
  const BResetFormAction();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BResetFormAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'BFormAction.resetForm()';
  }
}

// dart format on
