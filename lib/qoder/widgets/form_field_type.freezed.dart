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
mixin _$ValidationRule {
  /// 必填
  bool? get required;

  /// 最小长度
  int? get minLength;

  /// 最大长度
  int? get maxLength;

  /// 最小值
  num? get min;

  /// 最大值
  num? get max;

  /// 正则表达式模式
  String? get pattern;

  /// 自定义验证函数
  String? Function(String?)? get customValidator;

  /// 错误消息
  String? get errorMessage;

  /// Create a copy of ValidationRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationRuleCopyWith<ValidationRule> get copyWith =>
      _$ValidationRuleCopyWithImpl<ValidationRule>(
          this as ValidationRule, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationRule &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.customValidator, customValidator) ||
                other.customValidator == customValidator) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, required, minLength, maxLength,
      min, max, pattern, customValidator, errorMessage);

  @override
  String toString() {
    return 'ValidationRule(required: $required, minLength: $minLength, maxLength: $maxLength, min: $min, max: $max, pattern: $pattern, customValidator: $customValidator, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $ValidationRuleCopyWith<$Res> {
  factory $ValidationRuleCopyWith(
          ValidationRule value, $Res Function(ValidationRule) _then) =
      _$ValidationRuleCopyWithImpl;
  @useResult
  $Res call(
      {bool? required,
      int? minLength,
      int? maxLength,
      num? min,
      num? max,
      String? pattern,
      String? Function(String?)? customValidator,
      String? errorMessage});
}

/// @nodoc
class _$ValidationRuleCopyWithImpl<$Res>
    implements $ValidationRuleCopyWith<$Res> {
  _$ValidationRuleCopyWithImpl(this._self, this._then);

  final ValidationRule _self;
  final $Res Function(ValidationRule) _then;

  /// Create a copy of ValidationRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? required = freezed,
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? pattern = freezed,
    Object? customValidator = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as num?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as num?,
      pattern: freezed == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      customValidator: freezed == customValidator
          ? _self.customValidator
          : customValidator // ignore: cast_nullable_to_non_nullable
              as String? Function(String?)?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ValidationRule].
extension ValidationRulePatterns on ValidationRule {
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
    TResult Function(_ValidationRule value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationRule() when $default != null:
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
    TResult Function(_ValidationRule value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationRule():
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
    TResult? Function(_ValidationRule value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationRule() when $default != null:
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
            bool? required,
            int? minLength,
            int? maxLength,
            num? min,
            num? max,
            String? pattern,
            String? Function(String?)? customValidator,
            String? errorMessage)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ValidationRule() when $default != null:
        return $default(
            _that.required,
            _that.minLength,
            _that.maxLength,
            _that.min,
            _that.max,
            _that.pattern,
            _that.customValidator,
            _that.errorMessage);
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
            bool? required,
            int? minLength,
            int? maxLength,
            num? min,
            num? max,
            String? pattern,
            String? Function(String?)? customValidator,
            String? errorMessage)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationRule():
        return $default(
            _that.required,
            _that.minLength,
            _that.maxLength,
            _that.min,
            _that.max,
            _that.pattern,
            _that.customValidator,
            _that.errorMessage);
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
            bool? required,
            int? minLength,
            int? maxLength,
            num? min,
            num? max,
            String? pattern,
            String? Function(String?)? customValidator,
            String? errorMessage)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ValidationRule() when $default != null:
        return $default(
            _that.required,
            _that.minLength,
            _that.maxLength,
            _that.min,
            _that.max,
            _that.pattern,
            _that.customValidator,
            _that.errorMessage);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ValidationRule implements ValidationRule {
  const _ValidationRule(
      {this.required,
      this.minLength,
      this.maxLength,
      this.min,
      this.max,
      this.pattern,
      this.customValidator,
      this.errorMessage});

  /// 必填
  @override
  final bool? required;

  /// 最小长度
  @override
  final int? minLength;

  /// 最大长度
  @override
  final int? maxLength;

  /// 最小值
  @override
  final num? min;

  /// 最大值
  @override
  final num? max;

  /// 正则表达式模式
  @override
  final String? pattern;

  /// 自定义验证函数
  @override
  final String? Function(String?)? customValidator;

  /// 错误消息
  @override
  final String? errorMessage;

  /// Create a copy of ValidationRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationRuleCopyWith<_ValidationRule> get copyWith =>
      __$ValidationRuleCopyWithImpl<_ValidationRule>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationRule &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.minLength, minLength) ||
                other.minLength == minLength) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.pattern, pattern) || other.pattern == pattern) &&
            (identical(other.customValidator, customValidator) ||
                other.customValidator == customValidator) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, required, minLength, maxLength,
      min, max, pattern, customValidator, errorMessage);

  @override
  String toString() {
    return 'ValidationRule(required: $required, minLength: $minLength, maxLength: $maxLength, min: $min, max: $max, pattern: $pattern, customValidator: $customValidator, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$ValidationRuleCopyWith<$Res>
    implements $ValidationRuleCopyWith<$Res> {
  factory _$ValidationRuleCopyWith(
          _ValidationRule value, $Res Function(_ValidationRule) _then) =
      __$ValidationRuleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? required,
      int? minLength,
      int? maxLength,
      num? min,
      num? max,
      String? pattern,
      String? Function(String?)? customValidator,
      String? errorMessage});
}

/// @nodoc
class __$ValidationRuleCopyWithImpl<$Res>
    implements _$ValidationRuleCopyWith<$Res> {
  __$ValidationRuleCopyWithImpl(this._self, this._then);

  final _ValidationRule _self;
  final $Res Function(_ValidationRule) _then;

  /// Create a copy of ValidationRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? required = freezed,
    Object? minLength = freezed,
    Object? maxLength = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? pattern = freezed,
    Object? customValidator = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_ValidationRule(
      required: freezed == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      minLength: freezed == minLength
          ? _self.minLength
          : minLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLength: freezed == maxLength
          ? _self.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _self.min
          : min // ignore: cast_nullable_to_non_nullable
              as num?,
      max: freezed == max
          ? _self.max
          : max // ignore: cast_nullable_to_non_nullable
              as num?,
      pattern: freezed == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String?,
      customValidator: freezed == customValidator
          ? _self.customValidator
          : customValidator // ignore: cast_nullable_to_non_nullable
              as String? Function(String?)?,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$FormFieldOption {
  /// 显示标签
  String get label;

  /// 实际值
  dynamic get value;

  /// 是否禁用
  bool get disabled;

  /// 描述
  String? get description;

  /// Create a copy of FormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormFieldOptionCopyWith<FormFieldOption> get copyWith =>
      _$FormFieldOptionCopyWithImpl<FormFieldOption>(
          this as FormFieldOption, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormFieldOption &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label,
      const DeepCollectionEquality().hash(value), disabled, description);

  @override
  String toString() {
    return 'FormFieldOption(label: $label, value: $value, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class $FormFieldOptionCopyWith<$Res> {
  factory $FormFieldOptionCopyWith(
          FormFieldOption value, $Res Function(FormFieldOption) _then) =
      _$FormFieldOptionCopyWithImpl;
  @useResult
  $Res call({String label, dynamic value, bool disabled, String? description});
}

/// @nodoc
class _$FormFieldOptionCopyWithImpl<$Res>
    implements $FormFieldOptionCopyWith<$Res> {
  _$FormFieldOptionCopyWithImpl(this._self, this._then);

  final FormFieldOption _self;
  final $Res Function(FormFieldOption) _then;

  /// Create a copy of FormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FormFieldOption].
extension FormFieldOptionPatterns on FormFieldOption {
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
    TResult Function(_FormFieldOption value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption() when $default != null:
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
    TResult Function(_FormFieldOption value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption():
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
    TResult? Function(_FormFieldOption value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption() when $default != null:
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
            String label, dynamic value, bool disabled, String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption() when $default != null:
        return $default(
            _that.label, _that.value, _that.disabled, _that.description);
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
            String label, dynamic value, bool disabled, String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption():
        return $default(
            _that.label, _that.value, _that.disabled, _that.description);
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
            String label, dynamic value, bool disabled, String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldOption() when $default != null:
        return $default(
            _that.label, _that.value, _that.disabled, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FormFieldOption implements FormFieldOption {
  const _FormFieldOption(
      {required this.label,
      required this.value,
      this.disabled = false,
      this.description});

  /// 显示标签
  @override
  final String label;

  /// 实际值
  @override
  final dynamic value;

  /// 是否禁用
  @override
  @JsonKey()
  final bool disabled;

  /// 描述
  @override
  final String? description;

  /// Create a copy of FormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormFieldOptionCopyWith<_FormFieldOption> get copyWith =>
      __$FormFieldOptionCopyWithImpl<_FormFieldOption>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormFieldOption &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label,
      const DeepCollectionEquality().hash(value), disabled, description);

  @override
  String toString() {
    return 'FormFieldOption(label: $label, value: $value, disabled: $disabled, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$FormFieldOptionCopyWith<$Res>
    implements $FormFieldOptionCopyWith<$Res> {
  factory _$FormFieldOptionCopyWith(
          _FormFieldOption value, $Res Function(_FormFieldOption) _then) =
      __$FormFieldOptionCopyWithImpl;
  @override
  @useResult
  $Res call({String label, dynamic value, bool disabled, String? description});
}

/// @nodoc
class __$FormFieldOptionCopyWithImpl<$Res>
    implements _$FormFieldOptionCopyWith<$Res> {
  __$FormFieldOptionCopyWithImpl(this._self, this._then);

  final _FormFieldOption _self;
  final $Res Function(_FormFieldOption) _then;

  /// Create a copy of FormFieldOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? label = null,
    Object? value = freezed,
    Object? disabled = null,
    Object? description = freezed,
  }) {
    return _then(_FormFieldOption(
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$GridConfig {
  /// 全屏栅格列数（xs）
  int? get xs;

  /// 小屏栅格列数（sm）
  int? get sm;

  /// 中屏栅格列数（md）
  int? get md;

  /// 大屏栅格列数（lg）
  int? get lg;

  /// 超大屏栅格列数（xl）
  int? get xl;

  /// 2K屏栅格列数（xxl）
  int? get xxl;

  /// Create a copy of GridConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GridConfigCopyWith<GridConfig> get copyWith =>
      _$GridConfigCopyWithImpl<GridConfig>(this as GridConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GridConfig &&
            (identical(other.xs, xs) || other.xs == xs) &&
            (identical(other.sm, sm) || other.sm == sm) &&
            (identical(other.md, md) || other.md == md) &&
            (identical(other.lg, lg) || other.lg == lg) &&
            (identical(other.xl, xl) || other.xl == xl) &&
            (identical(other.xxl, xxl) || other.xxl == xxl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, xs, sm, md, lg, xl, xxl);

  @override
  String toString() {
    return 'GridConfig(xs: $xs, sm: $sm, md: $md, lg: $lg, xl: $xl, xxl: $xxl)';
  }
}

/// @nodoc
abstract mixin class $GridConfigCopyWith<$Res> {
  factory $GridConfigCopyWith(
          GridConfig value, $Res Function(GridConfig) _then) =
      _$GridConfigCopyWithImpl;
  @useResult
  $Res call({int? xs, int? sm, int? md, int? lg, int? xl, int? xxl});
}

/// @nodoc
class _$GridConfigCopyWithImpl<$Res> implements $GridConfigCopyWith<$Res> {
  _$GridConfigCopyWithImpl(this._self, this._then);

  final GridConfig _self;
  final $Res Function(GridConfig) _then;

  /// Create a copy of GridConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xs = freezed,
    Object? sm = freezed,
    Object? md = freezed,
    Object? lg = freezed,
    Object? xl = freezed,
    Object? xxl = freezed,
  }) {
    return _then(_self.copyWith(
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
    ));
  }
}

/// Adds pattern-matching-related methods to [GridConfig].
extension GridConfigPatterns on GridConfig {
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
    TResult Function(_GridConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GridConfig() when $default != null:
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
    TResult Function(_GridConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GridConfig():
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
    TResult? Function(_GridConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GridConfig() when $default != null:
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
    TResult Function(int? xs, int? sm, int? md, int? lg, int? xl, int? xxl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GridConfig() when $default != null:
        return $default(
            _that.xs, _that.sm, _that.md, _that.lg, _that.xl, _that.xxl);
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
    TResult Function(int? xs, int? sm, int? md, int? lg, int? xl, int? xxl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GridConfig():
        return $default(
            _that.xs, _that.sm, _that.md, _that.lg, _that.xl, _that.xxl);
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
    TResult? Function(int? xs, int? sm, int? md, int? lg, int? xl, int? xxl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GridConfig() when $default != null:
        return $default(
            _that.xs, _that.sm, _that.md, _that.lg, _that.xl, _that.xxl);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GridConfig extends GridConfig {
  const _GridConfig(
      {this.xs, this.sm, this.md = 24, this.lg, this.xl, this.xxl})
      : super._();

  /// 全屏栅格列数（xs）
  @override
  final int? xs;

  /// 小屏栅格列数（sm）
  @override
  final int? sm;

  /// 中屏栅格列数（md）
  @override
  @JsonKey()
  final int? md;

  /// 大屏栅格列数（lg）
  @override
  final int? lg;

  /// 超大屏栅格列数（xl）
  @override
  final int? xl;

  /// 2K屏栅格列数（xxl）
  @override
  final int? xxl;

  /// Create a copy of GridConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GridConfigCopyWith<_GridConfig> get copyWith =>
      __$GridConfigCopyWithImpl<_GridConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GridConfig &&
            (identical(other.xs, xs) || other.xs == xs) &&
            (identical(other.sm, sm) || other.sm == sm) &&
            (identical(other.md, md) || other.md == md) &&
            (identical(other.lg, lg) || other.lg == lg) &&
            (identical(other.xl, xl) || other.xl == xl) &&
            (identical(other.xxl, xxl) || other.xxl == xxl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, xs, sm, md, lg, xl, xxl);

  @override
  String toString() {
    return 'GridConfig(xs: $xs, sm: $sm, md: $md, lg: $lg, xl: $xl, xxl: $xxl)';
  }
}

/// @nodoc
abstract mixin class _$GridConfigCopyWith<$Res>
    implements $GridConfigCopyWith<$Res> {
  factory _$GridConfigCopyWith(
          _GridConfig value, $Res Function(_GridConfig) _then) =
      __$GridConfigCopyWithImpl;
  @override
  @useResult
  $Res call({int? xs, int? sm, int? md, int? lg, int? xl, int? xxl});
}

/// @nodoc
class __$GridConfigCopyWithImpl<$Res> implements _$GridConfigCopyWith<$Res> {
  __$GridConfigCopyWithImpl(this._self, this._then);

  final _GridConfig _self;
  final $Res Function(_GridConfig) _then;

  /// Create a copy of GridConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? xs = freezed,
    Object? sm = freezed,
    Object? md = freezed,
    Object? lg = freezed,
    Object? xl = freezed,
    Object? xxl = freezed,
  }) {
    return _then(_GridConfig(
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
    ));
  }
}

/// @nodoc
mixin _$FormFieldConfig {
  /// 字段名称（唯一标识）
  String get name;

  /// 字段类型
  FormFieldType get type;

  /// 显示标签
  String get label;

  /// 占位符
  String? get placeholder;

  /// 帮助文本
  String? get helperText;

  /// 默认值
  dynamic get defaultValue;

  /// 是否必填
  bool get required;

  /// 验证规则
  List<ValidationRule>? get validations;

  /// 选项列表（用于select、radio、checkbox等）
  List<FormFieldOption>? get options;

  /// 是否禁用
  bool get disabled;

  /// 是否只读
  bool get readOnly;

  /// 栅格配置
  GridConfig get gridConfig;

  /// 字段说明
  String? get description;

  /// 额外的属性（用于扩展）
  Map<String, dynamic>? get extra;

  /// 前缀图标
  String? get prefixIcon;

  /// 后缀图标
  String? get suffixIcon;

  /// 最大行数（仅用于textarea）
  int? get maxLines;

  /// 最小行数（仅用于textarea）
  int? get minLines;

  /// 前缀文本
  String? get prefix;

  /// 后缀文本
  String? get suffix;

  /// 显示条件（用于条件显示）
  bool Function(Map<String, dynamic> formValues)? get visibleWhen;

  /// 是否显示（默认true）
  bool get visible;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormFieldConfigCopyWith<FormFieldConfig> get copyWith =>
      _$FormFieldConfigCopyWithImpl<FormFieldConfig>(
          this as FormFieldConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormFieldConfig &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.gridConfig, gridConfig) ||
                other.gridConfig == gridConfig) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.extra, extra) &&
            (identical(other.prefixIcon, prefixIcon) ||
                other.prefixIcon == prefixIcon) &&
            (identical(other.suffixIcon, suffixIcon) ||
                other.suffixIcon == suffixIcon) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.minLines, minLines) ||
                other.minLines == minLines) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.visibleWhen, visibleWhen) ||
                other.visibleWhen == visibleWhen) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        type,
        label,
        placeholder,
        helperText,
        const DeepCollectionEquality().hash(defaultValue),
        required,
        const DeepCollectionEquality().hash(validations),
        const DeepCollectionEquality().hash(options),
        disabled,
        readOnly,
        gridConfig,
        description,
        const DeepCollectionEquality().hash(extra),
        prefixIcon,
        suffixIcon,
        maxLines,
        minLines,
        prefix,
        suffix,
        visibleWhen,
        visible
      ]);

  @override
  String toString() {
    return 'FormFieldConfig(name: $name, type: $type, label: $label, placeholder: $placeholder, helperText: $helperText, defaultValue: $defaultValue, required: $required, validations: $validations, options: $options, disabled: $disabled, readOnly: $readOnly, gridConfig: $gridConfig, description: $description, extra: $extra, prefixIcon: $prefixIcon, suffixIcon: $suffixIcon, maxLines: $maxLines, minLines: $minLines, prefix: $prefix, suffix: $suffix, visibleWhen: $visibleWhen, visible: $visible)';
  }
}

/// @nodoc
abstract mixin class $FormFieldConfigCopyWith<$Res> {
  factory $FormFieldConfigCopyWith(
          FormFieldConfig value, $Res Function(FormFieldConfig) _then) =
      _$FormFieldConfigCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      FormFieldType type,
      String label,
      String? placeholder,
      String? helperText,
      dynamic defaultValue,
      bool required,
      List<ValidationRule>? validations,
      List<FormFieldOption>? options,
      bool disabled,
      bool readOnly,
      GridConfig gridConfig,
      String? description,
      Map<String, dynamic>? extra,
      String? prefixIcon,
      String? suffixIcon,
      int? maxLines,
      int? minLines,
      String? prefix,
      String? suffix,
      bool Function(Map<String, dynamic> formValues)? visibleWhen,
      bool visible});

  $GridConfigCopyWith<$Res> get gridConfig;
}

/// @nodoc
class _$FormFieldConfigCopyWithImpl<$Res>
    implements $FormFieldConfigCopyWith<$Res> {
  _$FormFieldConfigCopyWithImpl(this._self, this._then);

  final FormFieldConfig _self;
  final $Res Function(FormFieldConfig) _then;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? helperText = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? validations = freezed,
    Object? options = freezed,
    Object? disabled = null,
    Object? readOnly = null,
    Object? gridConfig = null,
    Object? description = freezed,
    Object? extra = freezed,
    Object? prefixIcon = freezed,
    Object? suffixIcon = freezed,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? visibleWhen = freezed,
    Object? visible = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormFieldType,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      validations: freezed == validations
          ? _self.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<ValidationRule>?,
      options: freezed == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<FormFieldOption>?,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      readOnly: null == readOnly
          ? _self.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      gridConfig: null == gridConfig
          ? _self.gridConfig
          : gridConfig // ignore: cast_nullable_to_non_nullable
              as GridConfig,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _self.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      suffixIcon: freezed == suffixIcon
          ? _self.suffixIcon
          : suffixIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      minLines: freezed == minLines
          ? _self.minLines
          : minLines // ignore: cast_nullable_to_non_nullable
              as int?,
      prefix: freezed == prefix
          ? _self.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleWhen: freezed == visibleWhen
          ? _self.visibleWhen
          : visibleWhen // ignore: cast_nullable_to_non_nullable
              as bool Function(Map<String, dynamic> formValues)?,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GridConfigCopyWith<$Res> get gridConfig {
    return $GridConfigCopyWith<$Res>(_self.gridConfig, (value) {
      return _then(_self.copyWith(gridConfig: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FormFieldConfig].
extension FormFieldConfigPatterns on FormFieldConfig {
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
    TResult Function(_FormFieldConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig() when $default != null:
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
    TResult Function(_FormFieldConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig():
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
    TResult? Function(_FormFieldConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig() when $default != null:
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
            String name,
            FormFieldType type,
            String label,
            String? placeholder,
            String? helperText,
            dynamic defaultValue,
            bool required,
            List<ValidationRule>? validations,
            List<FormFieldOption>? options,
            bool disabled,
            bool readOnly,
            GridConfig gridConfig,
            String? description,
            Map<String, dynamic>? extra,
            String? prefixIcon,
            String? suffixIcon,
            int? maxLines,
            int? minLines,
            String? prefix,
            String? suffix,
            bool Function(Map<String, dynamic> formValues)? visibleWhen,
            bool visible)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig() when $default != null:
        return $default(
            _that.name,
            _that.type,
            _that.label,
            _that.placeholder,
            _that.helperText,
            _that.defaultValue,
            _that.required,
            _that.validations,
            _that.options,
            _that.disabled,
            _that.readOnly,
            _that.gridConfig,
            _that.description,
            _that.extra,
            _that.prefixIcon,
            _that.suffixIcon,
            _that.maxLines,
            _that.minLines,
            _that.prefix,
            _that.suffix,
            _that.visibleWhen,
            _that.visible);
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
            String name,
            FormFieldType type,
            String label,
            String? placeholder,
            String? helperText,
            dynamic defaultValue,
            bool required,
            List<ValidationRule>? validations,
            List<FormFieldOption>? options,
            bool disabled,
            bool readOnly,
            GridConfig gridConfig,
            String? description,
            Map<String, dynamic>? extra,
            String? prefixIcon,
            String? suffixIcon,
            int? maxLines,
            int? minLines,
            String? prefix,
            String? suffix,
            bool Function(Map<String, dynamic> formValues)? visibleWhen,
            bool visible)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig():
        return $default(
            _that.name,
            _that.type,
            _that.label,
            _that.placeholder,
            _that.helperText,
            _that.defaultValue,
            _that.required,
            _that.validations,
            _that.options,
            _that.disabled,
            _that.readOnly,
            _that.gridConfig,
            _that.description,
            _that.extra,
            _that.prefixIcon,
            _that.suffixIcon,
            _that.maxLines,
            _that.minLines,
            _that.prefix,
            _that.suffix,
            _that.visibleWhen,
            _that.visible);
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
            String name,
            FormFieldType type,
            String label,
            String? placeholder,
            String? helperText,
            dynamic defaultValue,
            bool required,
            List<ValidationRule>? validations,
            List<FormFieldOption>? options,
            bool disabled,
            bool readOnly,
            GridConfig gridConfig,
            String? description,
            Map<String, dynamic>? extra,
            String? prefixIcon,
            String? suffixIcon,
            int? maxLines,
            int? minLines,
            String? prefix,
            String? suffix,
            bool Function(Map<String, dynamic> formValues)? visibleWhen,
            bool visible)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FormFieldConfig() when $default != null:
        return $default(
            _that.name,
            _that.type,
            _that.label,
            _that.placeholder,
            _that.helperText,
            _that.defaultValue,
            _that.required,
            _that.validations,
            _that.options,
            _that.disabled,
            _that.readOnly,
            _that.gridConfig,
            _that.description,
            _that.extra,
            _that.prefixIcon,
            _that.suffixIcon,
            _that.maxLines,
            _that.minLines,
            _that.prefix,
            _that.suffix,
            _that.visibleWhen,
            _that.visible);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FormFieldConfig extends FormFieldConfig {
  const _FormFieldConfig(
      {required this.name,
      required this.type,
      required this.label,
      this.placeholder,
      this.helperText,
      this.defaultValue,
      this.required = false,
      final List<ValidationRule>? validations,
      final List<FormFieldOption>? options,
      this.disabled = false,
      this.readOnly = false,
      this.gridConfig = const GridConfig(md: 24),
      this.description,
      final Map<String, dynamic>? extra,
      this.prefixIcon,
      this.suffixIcon,
      this.maxLines,
      this.minLines,
      this.prefix,
      this.suffix,
      this.visibleWhen,
      this.visible = true})
      : _validations = validations,
        _options = options,
        _extra = extra,
        super._();

  /// 字段名称（唯一标识）
  @override
  final String name;

  /// 字段类型
  @override
  final FormFieldType type;

  /// 显示标签
  @override
  final String label;

  /// 占位符
  @override
  final String? placeholder;

  /// 帮助文本
  @override
  final String? helperText;

  /// 默认值
  @override
  final dynamic defaultValue;

  /// 是否必填
  @override
  @JsonKey()
  final bool required;

  /// 验证规则
  final List<ValidationRule>? _validations;

  /// 验证规则
  @override
  List<ValidationRule>? get validations {
    final value = _validations;
    if (value == null) return null;
    if (_validations is EqualUnmodifiableListView) return _validations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 选项列表（用于select、radio、checkbox等）
  final List<FormFieldOption>? _options;

  /// 选项列表（用于select、radio、checkbox等）
  @override
  List<FormFieldOption>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// 是否禁用
  @override
  @JsonKey()
  final bool disabled;

  /// 是否只读
  @override
  @JsonKey()
  final bool readOnly;

  /// 栅格配置
  @override
  @JsonKey()
  final GridConfig gridConfig;

  /// 字段说明
  @override
  final String? description;

  /// 额外的属性（用于扩展）
  final Map<String, dynamic>? _extra;

  /// 额外的属性（用于扩展）
  @override
  Map<String, dynamic>? get extra {
    final value = _extra;
    if (value == null) return null;
    if (_extra is EqualUnmodifiableMapView) return _extra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// 前缀图标
  @override
  final String? prefixIcon;

  /// 后缀图标
  @override
  final String? suffixIcon;

  /// 最大行数（仅用于textarea）
  @override
  final int? maxLines;

  /// 最小行数（仅用于textarea）
  @override
  final int? minLines;

  /// 前缀文本
  @override
  final String? prefix;

  /// 后缀文本
  @override
  final String? suffix;

  /// 显示条件（用于条件显示）
  @override
  final bool Function(Map<String, dynamic> formValues)? visibleWhen;

  /// 是否显示（默认true）
  @override
  @JsonKey()
  final bool visible;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormFieldConfigCopyWith<_FormFieldConfig> get copyWith =>
      __$FormFieldConfigCopyWithImpl<_FormFieldConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormFieldConfig &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality()
                .equals(other._validations, _validations) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.gridConfig, gridConfig) ||
                other.gridConfig == gridConfig) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._extra, _extra) &&
            (identical(other.prefixIcon, prefixIcon) ||
                other.prefixIcon == prefixIcon) &&
            (identical(other.suffixIcon, suffixIcon) ||
                other.suffixIcon == suffixIcon) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.minLines, minLines) ||
                other.minLines == minLines) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.visibleWhen, visibleWhen) ||
                other.visibleWhen == visibleWhen) &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        type,
        label,
        placeholder,
        helperText,
        const DeepCollectionEquality().hash(defaultValue),
        required,
        const DeepCollectionEquality().hash(_validations),
        const DeepCollectionEquality().hash(_options),
        disabled,
        readOnly,
        gridConfig,
        description,
        const DeepCollectionEquality().hash(_extra),
        prefixIcon,
        suffixIcon,
        maxLines,
        minLines,
        prefix,
        suffix,
        visibleWhen,
        visible
      ]);

  @override
  String toString() {
    return 'FormFieldConfig(name: $name, type: $type, label: $label, placeholder: $placeholder, helperText: $helperText, defaultValue: $defaultValue, required: $required, validations: $validations, options: $options, disabled: $disabled, readOnly: $readOnly, gridConfig: $gridConfig, description: $description, extra: $extra, prefixIcon: $prefixIcon, suffixIcon: $suffixIcon, maxLines: $maxLines, minLines: $minLines, prefix: $prefix, suffix: $suffix, visibleWhen: $visibleWhen, visible: $visible)';
  }
}

/// @nodoc
abstract mixin class _$FormFieldConfigCopyWith<$Res>
    implements $FormFieldConfigCopyWith<$Res> {
  factory _$FormFieldConfigCopyWith(
          _FormFieldConfig value, $Res Function(_FormFieldConfig) _then) =
      __$FormFieldConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      FormFieldType type,
      String label,
      String? placeholder,
      String? helperText,
      dynamic defaultValue,
      bool required,
      List<ValidationRule>? validations,
      List<FormFieldOption>? options,
      bool disabled,
      bool readOnly,
      GridConfig gridConfig,
      String? description,
      Map<String, dynamic>? extra,
      String? prefixIcon,
      String? suffixIcon,
      int? maxLines,
      int? minLines,
      String? prefix,
      String? suffix,
      bool Function(Map<String, dynamic> formValues)? visibleWhen,
      bool visible});

  @override
  $GridConfigCopyWith<$Res> get gridConfig;
}

/// @nodoc
class __$FormFieldConfigCopyWithImpl<$Res>
    implements _$FormFieldConfigCopyWith<$Res> {
  __$FormFieldConfigCopyWithImpl(this._self, this._then);

  final _FormFieldConfig _self;
  final $Res Function(_FormFieldConfig) _then;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? label = null,
    Object? placeholder = freezed,
    Object? helperText = freezed,
    Object? defaultValue = freezed,
    Object? required = null,
    Object? validations = freezed,
    Object? options = freezed,
    Object? disabled = null,
    Object? readOnly = null,
    Object? gridConfig = null,
    Object? description = freezed,
    Object? extra = freezed,
    Object? prefixIcon = freezed,
    Object? suffixIcon = freezed,
    Object? maxLines = freezed,
    Object? minLines = freezed,
    Object? prefix = freezed,
    Object? suffix = freezed,
    Object? visibleWhen = freezed,
    Object? visible = null,
  }) {
    return _then(_FormFieldConfig(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormFieldType,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _self.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _self.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultValue: freezed == defaultValue
          ? _self.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      validations: freezed == validations
          ? _self._validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<ValidationRule>?,
      options: freezed == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<FormFieldOption>?,
      disabled: null == disabled
          ? _self.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool,
      readOnly: null == readOnly
          ? _self.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      gridConfig: null == gridConfig
          ? _self.gridConfig
          : gridConfig // ignore: cast_nullable_to_non_nullable
              as GridConfig,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _self._extra
          : extra // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      prefixIcon: freezed == prefixIcon
          ? _self.prefixIcon
          : prefixIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      suffixIcon: freezed == suffixIcon
          ? _self.suffixIcon
          : suffixIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      maxLines: freezed == maxLines
          ? _self.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      minLines: freezed == minLines
          ? _self.minLines
          : minLines // ignore: cast_nullable_to_non_nullable
              as int?,
      prefix: freezed == prefix
          ? _self.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _self.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      visibleWhen: freezed == visibleWhen
          ? _self.visibleWhen
          : visibleWhen // ignore: cast_nullable_to_non_nullable
              as bool Function(Map<String, dynamic> formValues)?,
      visible: null == visible
          ? _self.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GridConfigCopyWith<$Res> get gridConfig {
    return $GridConfigCopyWith<$Res>(_self.gridConfig, (value) {
      return _then(_self.copyWith(gridConfig: value));
    });
  }
}

// dart format on
