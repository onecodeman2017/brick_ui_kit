import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:brick_ui_kit/qoder/widgets/form.dart';
import 'package:brick_ui_kit/qoder/widgets/bloc/form_bloc_export.dart';

class BlocFormDemo extends StatefulWidget {
  const BlocFormDemo({Key? key}) : super(key: key);

  @override
  State<BlocFormDemo> createState() => _BlocFormDemoState();
}

class _BlocFormDemoState extends State<BlocFormDemo> {
  late FormBloc _formBloc;
  final GlobalKey<State<QBlocFormBuilder>> _formKey =
      GlobalKey<State<QBlocFormBuilder>>();

  @override
  void initState() {
    super.initState();
    _formBloc = FormBloc(
      initialFields: [
        FormFieldConfig(
          name: 'username',
          type: FormFieldType.text,
          label: '用户名',
          placeholder: '请输入用户名',
          required: true,
          classNames: 'col-md-12 mb-3',
        ),
        FormFieldConfig(
          name: 'email',
          type: FormFieldType.email,
          label: '邮箱',
          placeholder: '请输入邮箱',
          required: true,
          classNames: 'col-md-12 mb-3',
        ),
        FormFieldConfig(
          name: 'age',
          type: FormFieldType.number,
          label: '年龄',
          placeholder: '请输入年龄',
          required: true,
          classNames: 'col-md-12 mb-3',
        ),
        FormFieldConfig(
          name: 'bio',
          type: FormFieldType.textarea,
          label: '个人简介',
          placeholder: '请输入个人简介',
          classNames: 'col-md-24 mb-3',
          maxLines: 3,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bloc 驱动表单演示',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          '使用 Flutter Bloc 进行表单状态管理，支持动态表单字段和复杂交互。',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: BlocProvider<FormBloc>(
              create: (context) => _formBloc,
              child: QBlocFormBuilder(
                key: _formKey,
                formBloc: _formBloc,
                onSubmit: (formValues) async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('表单提交成功: $formValues')),
                  );
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QBlocFormBuilderState) {
                  (state as QBlocFormBuilderState).submit();
                }
              },
              child: const Text('提交'),
            ),
            const SizedBox(width: 12),
            OutlinedButton(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QBlocFormBuilderState) {
                  (state as QBlocFormBuilderState).reset();
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
    _formBloc.close();
    super.dispose();
  }
}
