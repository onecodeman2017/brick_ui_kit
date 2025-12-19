import 'package:flutter/material.dart';
import 'form_field_type.dart';
import 'reactive_form_builder.dart';

/// 表单使用示例
class FormExample extends StatefulWidget {
  const FormExample({Key? key}) : super(key: key);

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  /// 定义表单字段
  late List<FormFieldConfig> formFields;

  /// 表单 key - 用于调用表单方法
  final GlobalKey<State<QReactiveFormBuilder>> _formKey =
      GlobalKey<State<QReactiveFormBuilder>>();

  @override
  void initState() {
    super.initState();
    formFields = _buildFormFields();
  }

  /// 构建表单字段配置
  List<FormFieldConfig> _buildFormFields() {
    return [
      // 用户名字段 - 占6列
      FormFieldConfig(
        name: 'username',
        type: FormFieldType.text,
        label: '用户名',
        placeholder: '请输入用户名',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 8),
        validations: [
          ValidationRule(
            minLength: 3,
            maxLength: 20,
            errorMessage: '用户名长度应在3-20之间',
          ),
        ],
        prefixIcon: 'person',
      ),

      // 邮箱字段 - 占6列
      FormFieldConfig(
        name: 'email',
        type: FormFieldType.email,
        label: '邮箱地址',
        placeholder: '请输入邮箱地址',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 8),
        validations: [
          ValidationRule(
            pattern: r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
            errorMessage: '请输入有效的邮箱地址',
          ),
        ],
        prefixIcon: 'mail',
      ),

      // 电话号码字段 - 占6列
      FormFieldConfig(
        name: 'phone',
        type: FormFieldType.phone,
        label: '电话号码',
        placeholder: '请输入电话号码',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 8),
        validations: [
          ValidationRule(
            minLength: 10,
            maxLength: 15,
            errorMessage: '请输入有效的电话号码',
          ),
        ],
        prefixIcon: 'phone',
      ),

      // 性别字段 - 占6列
      FormFieldConfig(
        name: 'gender',
        type: FormFieldType.select,
        label: '性别',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 8),
        options: [
          FormFieldOption(label: '男', value: 'male'),
          FormFieldOption(label: '女', value: 'female'),
          FormFieldOption(label: '其他', value: 'other'),
        ],
      ),

      // 出生日期字段 - 占6列
      FormFieldConfig(
        name: 'birthDate',
        type: FormFieldType.date,
        label: '出生日期',
        gridConfig: GridConfig(md: 12, lg: 8),
        prefixIcon: 'calendar',
      ),

      // 部门字段 - 占6列
      FormFieldConfig(
        name: 'department',
        type: FormFieldType.select,
        label: '所属部门',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 8),
        options: [
          FormFieldOption(label: '技术部', value: 'tech'),
          FormFieldOption(label: '市场部', value: 'marketing'),
          FormFieldOption(label: '销售部', value: 'sales'),
          FormFieldOption(label: '人事部', value: 'hr'),
        ],
      ),

      // 密码字段 - 占12列
      FormFieldConfig(
        name: 'password',
        type: FormFieldType.password,
        label: '密码',
        placeholder: '请输入密码',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 12),
        validations: [
          ValidationRule(
            minLength: 6,
            errorMessage: '密码长度至少6位',
          ),
        ],
        prefixIcon: 'lock',
      ),

      // 确认密码字段 - 占12列
      FormFieldConfig(
        name: 'confirmPassword',
        type: FormFieldType.password,
        label: '确认密码',
        placeholder: '请再次输入密码',
        required: true,
        gridConfig: GridConfig(md: 12, lg: 12),
        prefixIcon: 'lock',
      ),

      // 个人简介字段 - 占24列
      FormFieldConfig(
        name: 'bio',
        type: FormFieldType.textarea,
        label: '个人简介',
        placeholder: '请输入个人简介',
        gridConfig: GridConfig(md: 24),
        maxLines: 4,
        minLines: 3,
      ),

      // 是否同意条款字段 - 占24列
      FormFieldConfig(
        name: 'agreeTerms',
        type: FormFieldType.checkbox,
        label: '我同意服务条款和隐私政策',
        required: true,
        gridConfig: GridConfig(md: 24),
      ),

      // 是否订阅邮件 - 占24列
      FormFieldConfig(
        name: 'subscribeEmail',
        type: FormFieldType.switchField,
        label: '订阅我们的邮件',
        defaultValue: true,
        gridConfig: GridConfig(md: 24),
      ),

      // 兴趣爱好（多选）- 占24列
      FormFieldConfig(
        name: 'interests',
        type: FormFieldType.multiSelect,
        label: '兴趣爱好',
        gridConfig: GridConfig(md: 24),
        options: [
          FormFieldOption(label: '编程', value: 'coding'),
          FormFieldOption(label: '阅读', value: 'reading'),
          FormFieldOption(label: '体育', value: 'sports'),
          FormFieldOption(label: '旅游', value: 'travel'),
          FormFieldOption(label: '音乐', value: 'music'),
        ],
      ),
    ];
  }

  /// 处理表单提交
  Future<void> _handleSubmit() async {
    final state = _formKey.currentState;
    if (state is QReactiveFormBuilderState) {
      await (state as QReactiveFormBuilderState).submit();
    }
  }

  /// 处理表单重置
  void _handleReset() {
    final state = _formKey.currentState;
    if (state is QReactiveFormBuilderState) {
      (state as QReactiveFormBuilderState).reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('响应式表单示例'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 表单组件
            QReactiveFormBuilder(
              key: _formKey,
              fields: formFields,
              hooks: QFormHooks(
                beforeSubmit: () async {
                  print('表单提交前');
                  return true; // 返回 false 可以阻止提交
                },
                afterSubmit: (formValues) async {
                  print('表单提交成功: $formValues');
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('提交成功！')),
                    );
                  }
                },
                onSubmitFailed: (errors) async {
                  print('表单提交失败: $errors');
                },
                onFormValueChanged: (formValues) {
                  print('表单值变化: $formValues');
                },
                beforeReset: () async {
                  print('表单重置前');
                  return true; // 返回 false 可以阻止重置
                },
                afterReset: () {
                  print('表单已重置');
                },
              ),
              gutter: 3,
            ),

            // 按钮行 - 由外层处理
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _handleSubmit,
                  child: const Text('提交'),
                ),
                const SizedBox(width: 16),
                OutlinedButton(
                  onPressed: _handleReset,
                  child: const Text('重置'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
