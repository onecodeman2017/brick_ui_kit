import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'form_field_type.dart';

/// 表单字段渲染器
/// 使用 forUI 组件库的组件，通过 Reactive Forms 接口
class QReactiveFormField extends StatelessWidget {
  /// 表单字段配置
  final FormFieldConfig fieldConfig;

  /// 表单字段名称
  final String formControlName;

  /// 可选的自定义渲染函数
  final Widget Function(FormFieldConfig fieldConfig, FormControl control)?
      customBuilder;

  const QReactiveFormField({
    Key? key,
    required this.fieldConfig,
    required this.formControlName,
    this.customBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 如果使用自定义渲染函数
    if (fieldConfig.type == FormFieldType.custom && customBuilder != null) {
      final control = FormControl();
      return customBuilder!(fieldConfig, control);
    }

    // 检查字段是否应该显示
    return ReactiveFormConsumer(
      builder: (context, formGroup, child) {
        if (!fieldConfig.isVisible(formGroup.value as Map<String, dynamic>)) {
          return const SizedBox.shrink();
        }

        switch (fieldConfig.type) {
          case FormFieldType.text:
          case FormFieldType.email:
          case FormFieldType.password:
          case FormFieldType.phone:
          case FormFieldType.number:
          case FormFieldType.textarea:
            return ReactiveTextField(
              formControlName: formControlName,
              decoration: InputDecoration(
                labelText: fieldConfig.label,
                hintText: fieldConfig.placeholder,
                helperText: fieldConfig.helperText,
              ),
              keyboardType: _getKeyboardType(),
              inputFormatters: _getInputFormatters(),
              maxLines: fieldConfig.type == FormFieldType.textarea
                  ? fieldConfig.maxLines
                  : 1,
              minLines: fieldConfig.type == FormFieldType.textarea
                  ? fieldConfig.minLines
                  : 1,
              obscureText: fieldConfig.type == FormFieldType.password,
            );
          case FormFieldType.select:
            final options = fieldConfig.options ?? [];
            return ReactiveDropdownField(
              formControlName: formControlName,
              decoration: InputDecoration(
                labelText: fieldConfig.label,
                helperText: fieldConfig.helperText,
              ),
              items: options.map((option) {
                return DropdownMenuItem(
                  value: option.value?.toString(),
                  child: Text(option.label ?? ''),
                );
              }).toList(),
            );
          case FormFieldType.multiSelect:
            final options = fieldConfig.options ?? [];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (fieldConfig.label != null) Text(fieldConfig.label!),
                ...options.map((option) {
                  return ReactiveCheckboxListTile(
                    formControlName: formControlName,
                    title: Text(option.label ?? ''),
                  );
                }).toList(),
              ],
            );
          case FormFieldType.date:
            return ReactiveTextField(
              formControlName: formControlName,
              decoration: InputDecoration(
                labelText: fieldConfig.label,
                helperText: fieldConfig.helperText,
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: (control) async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: control.value != null &&
                          control.value.toString().isNotEmpty
                      ? DateTime.parse(control.value.toString())
                      : DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                );
                if (picked != null) {
                  control.updateValue(picked.toIso8601String().split('T')[0]);
                }
              },
            );
          case FormFieldType.time:
            return ReactiveTextField(
              formControlName: formControlName,
              decoration: InputDecoration(
                labelText: fieldConfig.label,
                helperText: fieldConfig.helperText,
                suffixIcon: const Icon(Icons.access_time),
              ),
              readOnly: true,
              onTap: (control) async {
                final TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: control.value != null &&
                          control.value.toString().isNotEmpty
                      ? TimeOfDay.fromDateTime(
                          DateTime.parse('2000-01-01 ${control.value}'))
                      : TimeOfDay.now(),
                );
                if (picked != null) {
                  control.updateValue(picked.format(context));
                }
              },
            );
          case FormFieldType.dateTime:
            return ReactiveTextField(
              formControlName: formControlName,
              decoration: InputDecoration(
                labelText: fieldConfig.label,
                helperText: fieldConfig.helperText,
                suffixIcon: const Icon(Icons.calendar_today),
              ),
              readOnly: true,
              onTap: (control) async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: control.value != null &&
                          control.value.toString().isNotEmpty
                      ? DateTime.parse(control.value.toString())
                      : DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2101),
                );
                if (picked != null) {
                  final TimeOfDay? timePicked = await showTimePicker(
                    context: context,
                    initialTime: control.value != null &&
                            control.value.toString().isNotEmpty
                        ? TimeOfDay.fromDateTime(
                            DateTime.parse(control.value.toString()))
                        : TimeOfDay.now(),
                  );
                  if (timePicked != null) {
                    final selectedDateTime = DateTime(
                      picked.year,
                      picked.month,
                      picked.day,
                      timePicked.hour,
                      timePicked.minute,
                    );
                    control.updateValue(selectedDateTime.toIso8601String());
                  }
                }
              },
            );
          case FormFieldType.switchField:
            return ReactiveSwitchListTile(
              formControlName: formControlName,
              title: Text(fieldConfig.label ?? ''),
              subtitle: fieldConfig.helperText != null
                  ? Text(fieldConfig.helperText!)
                  : null,
            );
          case FormFieldType.radio:
            final options = fieldConfig.options ?? [];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (fieldConfig.label != null) Text(fieldConfig.label!),
                ...options.map((option) {
                  return ReactiveRadioListTile(
                    formControlName: formControlName,
                    title: Text(option.label ?? ''),
                    value: option.value?.toString() ?? '',
                  );
                }).toList(),
              ],
            );
          case FormFieldType.checkbox:
            // 如果有选项，渲染多个复选框；否则渲染单个复选框
            if (fieldConfig.options != null &&
                fieldConfig.options!.isNotEmpty) {
              final options = fieldConfig.options!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (fieldConfig.label != null) Text(fieldConfig.label!),
                  ...options.map((option) {
                    return ReactiveCheckboxListTile(
                      formControlName: formControlName,
                      title: Text(option.label ?? ''),
                    );
                  }).toList(),
                ],
              );
            } else {
              // 单个复选框
              return ReactiveCheckboxListTile(
                formControlName: formControlName,
                title: Text(fieldConfig.label ?? ''),
              );
            }
          case FormFieldType.slider:
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (fieldConfig.label != null) Text(fieldConfig.label!),
                ReactiveSlider(
                  formControlName: formControlName,
                  min: (fieldConfig.extra?['min'] as num?)?.toDouble() ?? 0,
                  max: (fieldConfig.extra?['max'] as num?)?.toDouble() ?? 100,
                  divisions: fieldConfig.extra?['divisions'] as int?,
                ),
              ],
            );
          case FormFieldType.custom:
            return const SizedBox.shrink();
        }
      },
    );
  }

  /// 获取键盘类型
  TextInputType _getKeyboardType() {
    switch (fieldConfig.type) {
      case FormFieldType.email:
        return TextInputType.emailAddress;
      case FormFieldType.phone:
        return TextInputType.phone;
      case FormFieldType.number:
        return TextInputType.number;
      case FormFieldType.textarea:
        return TextInputType.multiline;
      default:
        return TextInputType.text;
    }
  }

  /// 获取输入格式化
  List<TextInputFormatter> _getInputFormatters() {
    switch (fieldConfig.type) {
      case FormFieldType.number:
        return [FilteringTextInputFormatter.digitsOnly];
      case FormFieldType.phone:
        return [FilteringTextInputFormatter.digitsOnly];
      default:
        return [];
    }
  }
}
