import 'package:equatable/equatable.dart';
import '../form_field_type.dart';

/// 表单状态基类
abstract class FormState extends Equatable {
  /// 当前表单字段配置
  final List<FormFieldConfig> fields;

  /// 表单值
  final Map<String, dynamic> formValues;

  /// 表单验证错误
  final Map<String, String> validationErrors;

  /// 表单是否有效
  final bool isValid;

  /// 表单是否正在加载
  final bool isLoading;

  /// 错误消息
  final String? errorMessage;

  const FormState({
    required this.fields,
    required this.formValues,
    required this.validationErrors,
    required this.isValid,
    required this.isLoading,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        fields,
        formValues,
        validationErrors,
        isValid,
        isLoading,
        errorMessage,
      ];
}

/// 初始状态
class FormInitialState extends FormState {
  const FormInitialState({
    List<FormFieldConfig> fields = const [],
    Map<String, dynamic> formValues = const {},
    Map<String, String> validationErrors = const {},
    bool isValid = true,
    bool isLoading = false,
    String? errorMessage,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: validationErrors,
          isValid: isValid,
          isLoading: isLoading,
          errorMessage: errorMessage,
        );
}

/// 表单加载中状态
class FormLoadingState extends FormState {
  const FormLoadingState({
    List<FormFieldConfig> fields = const [],
    Map<String, dynamic> formValues = const {},
    Map<String, String> validationErrors = const {},
    bool isValid = true,
    String? errorMessage,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: validationErrors,
          isValid: isValid,
          isLoading: true,
          errorMessage: errorMessage,
        );
}

/// 表单更新状态
class FormUpdatedState extends FormState {
  /// 更新的原因
  final String? reason;

  const FormUpdatedState({
    required List<FormFieldConfig> fields,
    required Map<String, dynamic> formValues,
    required Map<String, String> validationErrors,
    required bool isValid,
    bool isLoading = false,
    String? errorMessage,
    this.reason,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: validationErrors,
          isValid: isValid,
          isLoading: isLoading,
          errorMessage: errorMessage,
        );

  @override
  List<Object?> get props => [...super.props, reason];
}

/// 表单有效状态
class FormValidState extends FormState {
  const FormValidState({
    required List<FormFieldConfig> fields,
    required Map<String, dynamic> formValues,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: const {},
          isValid: true,
          isLoading: false,
        );
}

/// 表单无效状态
class FormInvalidState extends FormState {
  const FormInvalidState({
    required List<FormFieldConfig> fields,
    required Map<String, dynamic> formValues,
    required Map<String, String> validationErrors,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: validationErrors,
          isValid: false,
          isLoading: false,
        );
}

/// 表单提交成功状态
class FormSubmittedState extends FormState {
  /// 提交结果
  final dynamic submitResult;

  const FormSubmittedState({
    required List<FormFieldConfig> fields,
    required Map<String, dynamic> formValues,
    this.submitResult,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: const {},
          isValid: true,
          isLoading: false,
        );

  @override
  List<Object?> get props => [...super.props, submitResult];
}

/// 表单提交失败状态
class FormSubmitFailedState extends FormState {
  /// 失败原因
  final String failureReason;

  const FormSubmitFailedState({
    required List<FormFieldConfig> fields,
    required Map<String, dynamic> formValues,
    required this.failureReason,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: const {},
          isValid: true,
          isLoading: false,
          errorMessage: failureReason,
        );

  @override
  List<Object?> get props => [...super.props, failureReason];
}

/// 表单错误状态
class FormErrorState extends FormState {
  /// 错误信息
  final String error;

  const FormErrorState({
    required this.error,
    List<FormFieldConfig> fields = const [],
    Map<String, dynamic> formValues = const {},
    Map<String, String> validationErrors = const {},
    bool isValid = true,
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: validationErrors,
          isValid: isValid,
          isLoading: false,
          errorMessage: error,
        );

  @override
  List<Object?> get props => [...super.props, error];
}

/// 表单重置状态
class FormResetState extends FormState {
  const FormResetState({
    List<FormFieldConfig> fields = const [],
    Map<String, dynamic> formValues = const {},
  }) : super(
          fields: fields,
          formValues: formValues,
          validationErrors: const {},
          isValid: true,
          isLoading: false,
        );
}
