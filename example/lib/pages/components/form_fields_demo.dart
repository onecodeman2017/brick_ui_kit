import 'package:flutter/material.dart';
import 'package:brick_ui_kit/qoder/widgets/form.dart';

class FormFieldsDemo extends StatefulWidget {
  const FormFieldsDemo({Key? key}) : super(key: key);

  @override
  State<FormFieldsDemo> createState() => _FormFieldsDemoState();
}

class _FormFieldsDemoState extends State<FormFieldsDemo> {
  late FormFieldsBloc _formFieldsBloc;
  final GlobalKey<State<QReactiveFormBuilder>> _formKey =
      GlobalKey<State<QReactiveFormBuilder>>();

  @override
  void initState() {
    super.initState();
    _formFieldsBloc = FormFieldsBloc();
    _formFieldsBloc.add(
      SetFormFieldsEvent([
        FormFieldConfig(
          name: 'username',
          type: FormFieldType.text,
          label: '用户名',
          placeholder: '请输入用户名',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
        ),
        FormFieldConfig(
          name: 'email',
          type: FormFieldType.email,
          label: '邮箱',
          placeholder: '请输入邮箱',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
        ),
        FormFieldConfig(
          name: 'phone',
          type: FormFieldType.phone,
          label: '电话',
          placeholder: '请输入电话号码',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
        ),
        FormFieldConfig(
          name: 'password',
          type: FormFieldType.password,
          label: '密码',
          placeholder: '请输入密码',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
        ),
        FormFieldConfig(
          name: 'birthDate',
          type: FormFieldType.date,
          label: '出生日期',
          classNames: 'col-md-12 col-lg-8 mb-3',
          prefixIcon: 'calendar',
        ),
        FormFieldConfig(
          name: 'time',
          type: FormFieldType.time,
          label: '选择时间',
          classNames: 'col-md-12 col-lg-8 mb-3',
          prefixIcon: 'clock',
        ),
        FormFieldConfig(
          name: 'department',
          type: FormFieldType.select,
          label: '所属部门',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
          options: [
            FormFieldOption(label: '技术部', value: 'tech'),
            FormFieldOption(label: '市场部', value: 'marketing'),
            FormFieldOption(label: '销售部', value: 'sales'),
            FormFieldOption(label: '人事部', value: 'hr'),
          ],
        ),
        FormFieldConfig(
          name: 'jobType',
          type: FormFieldType.radio,
          label: '工作类型',
          required: true,
          classNames: 'col-md-12 col-lg-8 mb-3',
          options: [
            FormFieldOption(label: '全职', value: 'fulltime'),
            FormFieldOption(label: '兼职', value: 'parttime'),
            FormFieldOption(label: '实习', value: 'intern'),
          ],
        ),
        FormFieldConfig(
          name: 'subscribeEmail',
          type: FormFieldType.switchField,
          label: '订阅邮件',
          defaultValue: true,
          classNames: 'col-md-12 mb-3',
        ),
        FormFieldConfig(
          name: 'agreeTerms',
          type: FormFieldType.checkbox,
          label: '同意服务条款',
          required: true,
          classNames: 'col-md-12 mb-3',
        ),
        FormFieldConfig(
          name: 'hobbies',
          type: FormFieldType.multiSelect,
          label: '兴趣爱好',
          classNames: 'col-md-12 mb-3',
          options: [
            FormFieldOption(label: '编程', value: 'coding'),
            FormFieldOption(label: '阅读', value: 'reading'),
            FormFieldOption(label: '体育', value: 'sports'),
            FormFieldOption(label: '旅游', value: 'travel'),
          ],
        ),
        FormFieldConfig(
          name: 'satisfaction',
          type: FormFieldType.slider,
          label: '满意度',
          classNames: 'col-md-12 mb-3',
          extra: {'min': 0, 'max': 100, 'divisions': 10},
        ),
        FormFieldConfig(
          name: 'message',
          type: FormFieldType.textarea,
          label: '留言',
          placeholder: '请输入留言',
          classNames: 'col-md-24 mb-3',
          maxLines: 4,
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '表单字段类型',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          '支持多种表单字段类型，满足各种表单场景。',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        QReactiveFormBuilder(
          key: _formKey,
          formFieldsBloc: _formFieldsBloc,
          hooks: QFormHooks(
            afterSubmit: (values) async {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('表单值: $values')));
            },
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QReactiveFormBuilderState) {
                  (state as QReactiveFormBuilderState).submit();
                }
              },
              child: const Text('提交'),
            ),
            const SizedBox(width: 12),
            OutlinedButton(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QReactiveFormBuilderState) {
                  (state as QReactiveFormBuilderState).reset();
                }
              },
              child: const Text('重置'),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    _formFieldsBloc.close();
    super.dispose();
  }
}
