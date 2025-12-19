import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forui/forui.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'form_field_type.dart';

/// 响应式表单字段渲染器
class QReactiveFormField extends StatelessWidget {
  /// 表单字段配置
  final FormFieldConfig fieldConfig;

  /// 表单
  final FormGroup form;

  /// 可选的自定义渲染函数
  final Widget Function(FormFieldConfig fieldConfig, FormControl control)?
      customBuilder;

  const QReactiveFormField({
    Key? key,
    required this.fieldConfig,
    required this.form,
    this.customBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 如果使用自定义渲染函数
    if (fieldConfig.type == FormFieldType.custom && customBuilder != null) {
      final control = form.control(fieldConfig.name) as FormControl;
      return customBuilder!(fieldConfig, control);
    }

    // 根据字段类型渲染相应的组件
    return ReactiveFormConsumer(
      builder: (context, formGroup, child) {
        // 检查字段是否应该显示
        if (!fieldConfig.isVisible(formGroup.value as Map<String, dynamic>)) {
          return const SizedBox.shrink();
        }

        return _buildFormField(context, formGroup);
      },
    );
  }

  /// 构建表单字段
  Widget _buildFormField(BuildContext context, FormGroup formGroup) {
    final control = formGroup.control(fieldConfig.name) as FormControl;

    switch (fieldConfig.type) {
      case FormFieldType.text:
      case FormFieldType.email:
      case FormFieldType.phone:
      case FormFieldType.number:
      case FormFieldType.password:
        return _buildTextInput(control);

      case FormFieldType.textarea:
        return _buildTextArea(control);

      case FormFieldType.select:
        return _buildSelect(control);

      case FormFieldType.multiSelect:
        return _buildMultiSelect(control);

      case FormFieldType.date:
        return _buildDateInput(context, control);

      case FormFieldType.time:
        return _buildTimeInput(context, control);

      case FormFieldType.dateTime:
        return _buildDateTimeInput(context, control);

      case FormFieldType.switchField:
        return _buildSwitch(control);

      case FormFieldType.radio:
        return _buildRadio(control);

      case FormFieldType.checkbox:
        return _buildCheckbox(control);

      case FormFieldType.slider:
        return _buildSlider(control);

      case FormFieldType.custom:
        return const SizedBox.shrink();
    }
  }

  /// 构建文本输入框
  Widget _buildTextInput(FormControl control) {
    return ReactiveTextField<dynamic>(
      formControl: control,
      decoration: InputDecoration(
        labelText: fieldConfig.label,
        hintText: fieldConfig.placeholder,
        helperText: fieldConfig.helperText,
        prefixText: fieldConfig.prefix,
        suffixText: fieldConfig.suffix,
        border: const OutlineInputBorder(),
      ),
      keyboardType: _getKeyboardType(),
      obscureText: fieldConfig.type == FormFieldType.password,
      inputFormatters: _getInputFormatters(),
    );
  }

  /// 构建文本区域
  Widget _buildTextArea(FormControl control) {
    return ReactiveTextField<dynamic>(
      formControl: control,
      maxLines: fieldConfig.maxLines,
      minLines: fieldConfig.minLines ?? 3,
      decoration: InputDecoration(
        labelText: fieldConfig.label,
        hintText: fieldConfig.placeholder,
        helperText: fieldConfig.helperText,
        border: const OutlineInputBorder(),
      ),
    );
  }

  /// 构建下拉选择
  Widget _buildSelect(FormControl control) {
    final options = fieldConfig.options ?? [];
    return ReactiveDropdownField<dynamic>(
      formControl: control,
      items: options
          .map(
            (option) => DropdownMenuItem(
              value: option.value,
              enabled: !option.disabled,
              child: Text(option.label),
            ),
          )
          .toList(),
      decoration: InputDecoration(
        labelText: fieldConfig.label,
        helperText: fieldConfig.helperText,
        border: const OutlineInputBorder(),
      ),
    );
  }

  /// 构建多选择
  Widget _buildMultiSelect(FormControl control) {
    return FButton(
      onPress: () async {
        // 这里可以使用showDialog来实现多选
      },
      child: Text(fieldConfig.label),
    );
  }

  /// 构建日期输入
  Widget _buildDateInput(BuildContext context, FormControl control) {
    return GestureDetector(
      onTap: () async {
        if (context.mounted) {
          final selectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
          );
          if (selectedDate != null && context.mounted) {
            control.value = selectedDate.toString().split(' ')[0];
          }
        }
      },
      child: ReactiveTextField<dynamic>(
        formControl: control,
        decoration: InputDecoration(
          labelText: fieldConfig.label,
          hintText: fieldConfig.placeholder ?? 'YYYY-MM-DD',
          border: const OutlineInputBorder(),
        ),
        readOnly: true,
      ),
    );
  }

  /// 构建时间输入
  Widget _buildTimeInput(BuildContext context, FormControl control) {
    return GestureDetector(
      onTap: () async {
        if (context.mounted) {
          final selectedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
          );
          if (selectedTime != null && context.mounted) {
            control.value = selectedTime.format(context);
          }
        }
      },
      child: ReactiveTextField<dynamic>(
        formControl: control,
        decoration: InputDecoration(
          labelText: fieldConfig.label,
          border: const OutlineInputBorder(),
        ),
        readOnly: true,
      ),
    );
  }

  /// 构建日期时间输入
  Widget _buildDateTimeInput(BuildContext context, FormControl control) {
    return GestureDetector(
      onTap: () async {
        if (context.mounted) {
          final selectedDateTime = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
          );
          if (selectedDateTime != null && context.mounted) {
            control.value = selectedDateTime.toString();
          }
        }
      },
      child: ReactiveTextField<dynamic>(
        formControl: control,
        decoration: InputDecoration(
          labelText: fieldConfig.label,
          border: const OutlineInputBorder(),
        ),
        readOnly: true,
      ),
    );
  }

  /// 构建开关
  Widget _buildSwitch(FormControl control) {
    return ReactiveCheckboxListTile(
      formControl: control as FormControl<bool>,
      title: Text(fieldConfig.label),
    );
  }

  /// 构建单选按钮组
  Widget _buildRadio(FormControl control) {
    final options = fieldConfig.options ?? [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldConfig.label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        ...options.map(
          (option) => ReactiveRadioListTile<dynamic>(
            formControl: control,
            value: option.value,
            title: Text(option.label),
          ),
        ),
      ],
    );
  }

  /// 构建复选框
  Widget _buildCheckbox(FormControl control) {
    return ReactiveCheckboxListTile(
      formControl: control as FormControl<bool>,
      title: Text(fieldConfig.label),
    );
  }

  /// 构建滑块
  Widget _buildSlider(FormControl control) {
    return ReactiveSlider(
      formControl: control as FormControl<num>,
      min: (fieldConfig.extra?['min'] as num?)?.toDouble() ?? 0,
      max: (fieldConfig.extra?['max'] as num?)?.toDouble() ?? 100,
      divisions: fieldConfig.extra?['divisions'] as int?,
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
