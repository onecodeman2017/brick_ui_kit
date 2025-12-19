import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';

import 'form_field_type.dart';
import 'reactive_form_field.dart';

/// 表单方法接口 - 外层可通过 key 调用这些方法
abstract class QReactiveFormBuilderState {
  /// 提交表单
  Future<void> submit();

  /// 重置表单
  void reset();

  /// 获取表单当前值
  Map<String, dynamic> getFormValues();

  /// 获取表单是否有效
  bool isFormValid();

  /// 标记所有字段为已触碰
  void markAllAsTouched();

  /// 获取表单验证错误
  Map<String, dynamic> getFormErrors();
}

/// 表单 hooks - 用于监听表单状态变化
class QFormHooks {
  /// 表单提交前的 hook
  Future<bool> Function()? beforeSubmit;

  /// 表单提交后的 hook
  Future<void> Function(Map<String, dynamic> formValues)? afterSubmit;

  /// 表单提交失败的 hook
  Future<void> Function(Map<String, dynamic> errors)? onSubmitFailed;

  /// 表单值变化的 hook
  void Function(Map<String, dynamic> formValues)? onFormValueChanged;

  /// 表单重置前的 hook
  Future<bool> Function()? beforeReset;

  /// 表单重置后的 hook
  void Function()? afterReset;

  QFormHooks({
    this.beforeSubmit,
    this.afterSubmit,
    this.onSubmitFailed,
    this.onFormValueChanged,
    this.beforeReset,
    this.afterReset,
  });
}

/// 响应式表单容器 - 仅渲染表单字段，不包含按钮
class QReactiveFormBuilder extends StatefulWidget {
  /// 表单字段配置列表
  final List<FormFieldConfig> fields;

  /// 表单构建函数（用于自定义字段渲染）
  final Widget Function(
    BuildContext context,
    FormGroup form,
    List<FormFieldConfig> fields,
  )? formBuilder;

  /// 自定义字段渲染函数
  final Widget Function(FormFieldConfig fieldConfig, FormControl control)?
      customFieldBuilder;

  /// 表单 hooks
  final QFormHooks? hooks;

  /// 栅格间距
  final int gutter;

  const QReactiveFormBuilder({
    Key? key,
    required this.fields,
    this.formBuilder,
    this.customFieldBuilder,
    this.hooks,
    this.gutter = 2,
  }) : super(key: key);

  @override
  State<QReactiveFormBuilder> createState() => _QReactiveFormBuilderState();
}

class _QReactiveFormBuilderState extends State<QReactiveFormBuilder>
    implements QReactiveFormBuilderState {
  late FormGroup _form;

  @override
  void initState() {
    super.initState();
    _form = _buildFormGroup();
    // 监听表单值变化，触发 hook
    _form.statusChanged.listen((_) {
      if (widget.hooks?.onFormValueChanged != null) {
        widget.hooks!.onFormValueChanged!(_form.value as Map<String, dynamic>);
      }
    });
  }

  /// 构建FormGroup
  FormGroup _buildFormGroup() {
    final controls = <String, FormControl>{};

    for (final field in widget.fields) {
      final validators = <Validator<dynamic>>[];

      // 添加必填验证
      if (field.required) {
        validators.add(Validators.required);
      }

      // 添加自定义验证规则
      if (field.validations != null) {
        for (final validation in field.validations!) {
          if (validation.minLength != null) {
            validators.add(Validators.minLength(validation.minLength!));
          }
          if (validation.maxLength != null) {
            validators.add(Validators.maxLength(validation.maxLength!));
          }
          if (validation.pattern != null) {
            validators.add(Validators.pattern(validation.pattern!));
          }
        }
      }

      controls[field.name] = FormControl<dynamic>(
        value: field.defaultValue,
        validators: validators,
        disabled: field.disabled,
      );
    }

    return FormGroup(controls);
  }

  /// 提交表单
  @override
  Future<void> submit() async {
    // 执行前置 hook
    if (widget.hooks?.beforeSubmit != null) {
      final canSubmit = await widget.hooks!.beforeSubmit!();
      if (!canSubmit) return;
    }

    if (_form.valid) {
      try {
        // 执行后置 hook
        if (widget.hooks?.afterSubmit != null) {
          await widget.hooks!.afterSubmit!(_form.value as Map<String, dynamic>);
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('提交失败: $e')),
          );
        }
      }
    } else {
      _form.markAllAsTouched();
      // 执行失败 hook
      if (widget.hooks?.onSubmitFailed != null) {
        await widget
            .hooks!.onSubmitFailed!(_form.errors as Map<String, dynamic>);
      }
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('请填写所有必填项')),
        );
      }
    }
  }

  /// 重置表单
  @override
  void reset() async {
    // 执行前置 hook
    if (widget.hooks?.beforeReset != null) {
      final canReset = await widget.hooks!.beforeReset!();
      if (!canReset) return;
    }

    _form.reset();

    // 执行后置 hook
    if (widget.hooks?.afterReset != null) {
      widget.hooks!.afterReset!();
    }
  }

  /// 获取表单当前值
  @override
  Map<String, dynamic> getFormValues() {
    return _form.value as Map<String, dynamic>;
  }

  /// 获取表单是否有效
  @override
  bool isFormValid() {
    return _form.valid;
  }

  /// 标记所有字段为已触碰
  @override
  void markAllAsTouched() {
    _form.markAllAsTouched();
  }

  /// 获取表单验证错误
  @override
  Map<String, dynamic> getFormErrors() {
    return _form.errors as Map<String, dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: _form,
      child: Column(
        children: [
          // 如果提供了自定义formBuilder，使用它
          if (widget.formBuilder != null)
            widget.formBuilder!(context, _form, widget.fields)
          else
            // 默认表单布局
            _buildDefaultFormLayout(context, _form),
        ],
      ),
    );
  }

  /// 构建默认表单布局（仅包含表单字段，不包含按钮）
  Widget _buildDefaultFormLayout(
    BuildContext context,
    FormGroup form,
  ) {
    return BRow(
      classNames: 'g-${widget.gutter}',
      children: [
        // 添加表单字段
        ...widget.fields.map(
          (field) => BCol(
            classNames: field.gridConfig.classNames,
            child: ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                if (!field.isVisible(formGroup.value as Map<String, dynamic>)) {
                  return const SizedBox.shrink();
                }

                return QReactiveFormField(
                  fieldConfig: field,
                  form: form,
                  customBuilder: widget.customFieldBuilder,
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }
}
