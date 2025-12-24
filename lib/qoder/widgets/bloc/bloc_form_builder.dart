import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:brick_bootstrap5_plus/brick_bootstrap5_plus.dart';

import '../form_field_type.dart';
import '../reactive_form_field.dart';
import 'form_bloc.dart';
import 'form_event.dart';
import 'form_state.dart' as form_state;

/// Bloc 驱动表单的方法接口
abstract class QBlocFormBuilderState {
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

/// Bloc 驱动的响应式表单构建器
class QBlocFormBuilder extends StatefulWidget {
  /// 表单 Bloc
  final FormBloc formBloc;

  /// 表单构建函数（用于自定义字段渲染）
  final Widget Function(
    BuildContext context,
    FormGroup form,
    List<FormFieldConfig> fields,
  )? formBuilder;

  /// 自定义字段渲染函数
  final Widget Function(FormFieldConfig fieldConfig, FormControl control)?
      customFieldBuilder;

  /// 表单提交处理函数
  final Future<void> Function(Map<String, dynamic> formValues)? onSubmit;

  /// 表单验证失败的回调
  final void Function(Map<String, String> errors)? onValidationFailed;

  /// 栅格间距
  final int gutter;

  const QBlocFormBuilder({
    Key? key,
    required this.formBloc,
    this.formBuilder,
    this.customFieldBuilder,
    this.onSubmit,
    this.onValidationFailed,
    this.gutter = 2,
  }) : super(key: key);

  @override
  State<QBlocFormBuilder> createState() => _QBlocFormBuilderState();
}

class _QBlocFormBuilderState extends State<QBlocFormBuilder>
    implements QBlocFormBuilderState {
  late FormGroup _form;

  @override
  void initState() {
    super.initState();
    _form = _buildFormGroup(widget.formBloc.fields);
  }

  /// 构建 FormGroup
  FormGroup _buildFormGroup(List<FormFieldConfig> fields) {
    final controls = <String, AbstractControl>{};

    for (final field in fields) {
      final validators = <Validator<dynamic>>[];

      if (field.required) {
        validators.add(Validators.required);
      }

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
    if (_form.valid) {
      widget.formBloc.add(const FormSubmitEvent());
      try {
        if (widget.onSubmit != null) {
          await widget.onSubmit!(widget.formBloc.formValues);
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
      widget.formBloc.add(const FormValidateEvent());
      if (widget.onValidationFailed != null) {
        widget.onValidationFailed!(_form.errors as Map<String, String>);
      }
    }
  }

  /// 重置表单
  @override
  void reset() {
    _form.reset();
    widget.formBloc.add(const FormResetEvent());
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
    return BlocListener<FormBloc, form_state.FormState>(
      bloc: widget.formBloc,
      listener: (context, state) {
        // 当 Bloc 中的字段配置改变时，重新构建 FormGroup
        if (state is form_state.FormUpdatedState &&
            state.reason?.startsWith('fields') == true) {
          setState(() {
            _form = _buildFormGroup(state.fields);
          });
        }
      },
      child: BlocBuilder<FormBloc, form_state.FormState>(
        bloc: widget.formBloc,
        builder: (context, state) {
          return ReactiveForm(
            formGroup: _form,
            child: _buildForm(context, state),
          );
        },
      ),
    );
  }

  /// 构建表单UI（仅包含表单字段和状态展示）
  Widget _buildForm(
    BuildContext context,
    form_state.FormState state,
  ) {
    return BRow(
      classNames: 'g-${widget.gutter}',
      children: [
        // 添加表单字段
        ...state.fields.map(
          (field) => BCol(
            classNames: field.classNames,
            child: ReactiveFormConsumer(
              builder: (context, formGroup, child) {
                if (!field.isVisible(formGroup.value as Map<String, dynamic>)) {
                  return const SizedBox.shrink();
                }

                return QReactiveFormField(
                  fieldConfig: field,
                  formControlName: field.name,
                  customBuilder: widget.customFieldBuilder,
                );
              },
            ),
          ),
        ),

        // 显示验证错误
        if (state is form_state.FormInvalidState &&
            state.validationErrors.isNotEmpty)
          BCol(
            classNames: 'col-24',
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                border: Border.all(color: Colors.red.shade200),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: state.validationErrors.entries
                    .map(
                      (entry) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            const Icon(Icons.error,
                                color: Colors.red, size: 16),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                entry.value,
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),

        // 显示加载状态
        if (state is form_state.FormLoadingState)
          BCol(
            classNames: 'col-24',
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),

        // 显示提交结果消息
        if (state is form_state.FormSubmittedState)
          BCol(
            classNames: 'col-24',
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                border: Border.all(color: Colors.green.shade200),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  const Icon(Icons.check_circle, color: Colors.green),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      '提交成功！',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
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
