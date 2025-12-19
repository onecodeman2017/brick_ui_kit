import 'package:equatable/equatable.dart';
import '../form_field_type.dart';

/// 表单事件基类
abstract class FormEvent extends Equatable {
  const FormEvent();

  @override
  List<Object?> get props => [];
}

/// 初始化表单事件
class FormInitializedEvent extends FormEvent {
  /// 初始字段配置列表
  final List<FormFieldConfig> fields;

  const FormInitializedEvent({required this.fields});

  @override
  List<Object?> get props => [fields];
}

/// 字段值变化事件
class FormFieldChangedEvent extends FormEvent {
  /// 字段名称
  final String fieldName;

  /// 新值
  final dynamic newValue;

  const FormFieldChangedEvent({
    required this.fieldName,
    required this.newValue,
  });

  @override
  List<Object?> get props => [fieldName, newValue];
}

/// 更新表单字段配置事件
class FormFieldsUpdateEvent extends FormEvent {
  /// 新的字段配置列表
  final List<FormFieldConfig> fields;

  /// 是否替换整个表单配置
  final bool replaceAll;

  const FormFieldsUpdateEvent({
    required this.fields,
    this.replaceAll = false,
  });

  @override
  List<Object?> get props => [fields, replaceAll];
}

/// 更新单个字段事件
class FormSingleFieldUpdateEvent extends FormEvent {
  /// 字段名称
  final String fieldName;

  /// 新的字段配置
  final FormFieldConfig fieldConfig;

  const FormSingleFieldUpdateEvent({
    required this.fieldName,
    required this.fieldConfig,
  });

  @override
  List<Object?> get props => [fieldName, fieldConfig];
}

/// 清空字段值事件
class FormFieldClearedEvent extends FormEvent {
  /// 字段名称列表
  final List<String> fieldNames;

  const FormFieldClearedEvent({required this.fieldNames});

  @override
  List<Object?> get props => [fieldNames];
}

/// 禁用字段事件
class FormFieldDisabledEvent extends FormEvent {
  /// 字段名称列表
  final List<String> fieldNames;

  /// 是否禁用
  final bool disabled;

  const FormFieldDisabledEvent({
    required this.fieldNames,
    this.disabled = true,
  });

  @override
  List<Object?> get props => [fieldNames, disabled];
}

/// 显示/隐藏字段事件
class FormFieldVisibilityChangedEvent extends FormEvent {
  /// 字段名称列表
  final List<String> fieldNames;

  /// 是否显示
  final bool visible;

  const FormFieldVisibilityChangedEvent({
    required this.fieldNames,
    this.visible = true,
  });

  @override
  List<Object?> get props => [fieldNames, visible];
}

/// 表单验证事件
class FormValidateEvent extends FormEvent {
  const FormValidateEvent();
}

/// 表单重置事件
class FormResetEvent extends FormEvent {
  const FormResetEvent();
}

/// 表单提交事件
class FormSubmitEvent extends FormEvent {
  const FormSubmitEvent();
}

/// 自定义表单动作事件（用于处理复杂的表单逻辑）
class FormActionEvent extends FormEvent {
  /// 动作名称
  final String actionName;

  /// 动作参数
  final Map<String, dynamic>? payload;

  const FormActionEvent({
    required this.actionName,
    this.payload,
  });

  @override
  List<Object?> get props => [actionName, payload];
}
