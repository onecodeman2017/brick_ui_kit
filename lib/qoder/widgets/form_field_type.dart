import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_field_type.freezed.dart';

/// 表单字段类型枚举
enum FormFieldType {
  /// 文本输入框
  text,

  /// 数字输入框
  number,

  /// 电子邮件输入框
  email,

  /// 密码输入框
  password,

  /// 电话号码输入框
  phone,

  /// 日期选择器
  date,

  /// 时间选择器
  time,

  /// 日期时间选择器
  dateTime,

  /// 下拉选择
  select,

  /// 多选择
  multiSelect,

  /// 开关
  switchField,

  /// 单选按钮
  radio,

  /// 复选框
  checkbox,

  /// 文本区域
  textarea,

  /// 滑块
  slider,

  /// 自定义组件
  custom,
}

/// 验证规则
@freezed
abstract class ValidationRule with _$ValidationRule {
  const factory ValidationRule({
    /// 必填
    bool? required,

    /// 最小长度
    int? minLength,

    /// 最大长度
    int? maxLength,

    /// 最小值
    num? min,

    /// 最大值
    num? max,

    /// 正则表达式模式
    String? pattern,

    /// 自定义验证函数
    String? Function(String?)? customValidator,

    /// 错误消息
    String? errorMessage,
  }) = _ValidationRule;
}

/// 表单字段选项（用于select、radio等）
@freezed
abstract class FormFieldOption with _$FormFieldOption {
  const factory FormFieldOption({
    /// 显示标签
    required String label,

    /// 实际值
    required dynamic value,

    /// 是否禁用
    @Default(false) bool disabled,

    /// 描述
    String? description,
  }) = _FormFieldOption;
}

/// 栅格配置
@freezed
abstract class GridConfig with _$GridConfig {
  const factory GridConfig({
    /// 全屏栅格列数（xs）
    int? xs,

    /// 小屏栅格列数（sm）
    int? sm,

    /// 中屏栅格列数（md）
    @Default(24) int? md,

    /// 大屏栅格列数（lg）
    int? lg,

    /// 超大屏栅格列数（xl）
    int? xl,

    /// 2K屏栅格列数（xxl）
    int? xxl,
  }) = _GridConfig;

  const GridConfig._();

  /// 占据的列数（默认24列栅格）
  int get defaultSpan => md ?? 24;

  /// 获取响应式类名
  String get classNames {
    final classes = <String>[];
    if (xs != null) classes.add('col-xs-$xs');
    if (sm != null) classes.add('col-sm-$sm');
    if (md != null) classes.add('col-md-$md');
    if (lg != null) classes.add('col-lg-$lg');
    if (xl != null) classes.add('col-xl-$xl');
    if (xxl != null) classes.add('col-xxl-$xxl');
    return classes.isNotEmpty ? classes.join(' ') : 'col-md-24';
  }
}

/// 表单字段配置定义接口
@freezed
abstract class FormFieldConfig with _$FormFieldConfig {
  const factory FormFieldConfig({
    /// 字段名称（唯一标识）
    required String name,

    /// 字段类型
    required FormFieldType type,

    /// 显示标签
    required String label,

    /// 占位符
    String? placeholder,

    /// 帮助文本
    String? helperText,

    /// 默认值
    dynamic defaultValue,

    /// 是否必填
    @Default(false) bool required,

    /// 验证规则
    List<ValidationRule>? validations,

    /// 选项列表（用于select、radio、checkbox等）
    List<FormFieldOption>? options,

    /// 是否禁用
    @Default(false) bool disabled,

    /// 是否只读
    @Default(false) bool readOnly,

    /// 栅格配置
    @Default(GridConfig(md: 24)) GridConfig gridConfig,

    /// 字段说明
    String? description,

    /// 额外的属性（用于扩展）
    Map<String, dynamic>? extra,

    /// 前缀图标
    String? prefixIcon,

    /// 后缀图标
    String? suffixIcon,

    /// 最大行数（仅用于textarea）
    int? maxLines,

    /// 最小行数（仅用于textarea）
    int? minLines,

    /// 前缀文本
    String? prefix,

    /// 后缀文本
    String? suffix,

    /// 显示条件（用于条件显示）
    bool Function(Map<String, dynamic> formValues)? visibleWhen,

    /// 是否显示（默认true）
    @Default(true) bool visible,
  }) = _FormFieldConfig;

  const FormFieldConfig._();

  /// 检查字段是否应该显示
  bool isVisible(Map<String, dynamic> formValues) {
    if (!visible) return false;
    if (visibleWhen != null) {
      return visibleWhen!(formValues);
    }
    return true;
  }
}
