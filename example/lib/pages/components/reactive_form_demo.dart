import 'package:flutter/material.dart';
import 'package:brick_ui_kit/qoder/widgets/form.dart';

class ReactiveFormDemo extends StatefulWidget {
  const ReactiveFormDemo({Key? key}) : super(key: key);

  @override
  State<ReactiveFormDemo> createState() => _ReactiveFormDemoState();
}

class _ReactiveFormDemoState extends State<ReactiveFormDemo> {
  final GlobalKey<State<QReactiveFormBuilder>> _formKey =
      GlobalKey<State<QReactiveFormBuilder>>();

  late List<FormFieldConfig> formFields;

  @override
  void initState() {
    super.initState();
    formFields = [
      FormFieldConfig(
        name: 'username',
        type: FormFieldType.text,
        label: '用户名',
        placeholder: '请输入用户名',
        required: true,
        gridConfig: GridConfig(md: 12),
      ),
      FormFieldConfig(
        name: 'email',
        type: FormFieldType.email,
        label: '邮箱',
        placeholder: '请输入邮箱',
        required: true,
        gridConfig: GridConfig(md: 12),
      ),
      FormFieldConfig(
        name: 'message',
        type: FormFieldType.textarea,
        label: '留言',
        placeholder: '请输入留言',
        gridConfig: GridConfig(md: 24),
        maxLines: 4,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '响应式表单演示',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          '这是一个基于 reactive_forms 的表单系统，支持多种字段类型和验证规则。',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        QReactiveFormBuilder(
          key: _formKey,
          fields: formFields,
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
}
