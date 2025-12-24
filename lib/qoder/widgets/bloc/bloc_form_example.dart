import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../form_field_type.dart';
import 'form_bloc_export.dart';

/// Bloc 表单完整使用示例
class BlocFormExample extends StatefulWidget {
  const BlocFormExample({Key? key}) : super(key: key);

  @override
  State<BlocFormExample> createState() => _BlocFormExampleState();
}

class _BlocFormExampleState extends State<BlocFormExample> {
  late FormBloc _formBloc;

  /// 表单 key - 用于调用表单方法
  final GlobalKey<State<QBlocFormBuilder>> _formKey =
      GlobalKey<State<QBlocFormBuilder>>();

  @override
  void initState() {
    super.initState();
    _formBloc = FormBloc(
      initialFields: _buildInitialFormFields(),
    );

    // 注册字段变化处理�?
    _registerFieldChangeHandlers();
  }

  /// 构建初始表单字段
  List<FormFieldConfig> _buildInitialFormFields() {
    return [
      FormFieldConfig(
        name: 'userType',
        type: FormFieldType.select,
        label: '用户类型',
        required: true,
        classNames: 'col-md-12 mb-3',
        options: [
          FormFieldOption(label: '个人用户', value: 'personal'),
          FormFieldOption(label: '企业用户', value: 'company'),
        ],
      ),
      FormFieldConfig(
        name: 'fullName',
        type: FormFieldType.text,
        label: '姓名',
        required: true,
        classNames: 'col-md-12 mb-3',
      ),
      FormFieldConfig(
        name: 'email',
        type: FormFieldType.email,
        label: '邮箱',
        required: true,
        classNames: 'col-md-12 mb-3',
      ),
      FormFieldConfig(
        name: 'phone',
        type: FormFieldType.phone,
        label: '电话',
        required: true,
        classNames: 'col-md-12 mb-3',
      ),
    ];
  }

  /// 注册字段变化处理�?
  void _registerFieldChangeHandlers() {
    // 当用户类型改变时
    _formBloc.registerFieldChangeHandler(
      'userType',
      (newValue, allFormValues) {
        print('用户类型改变�? $newValue');

        if (newValue == 'company') {
          // 添加公司相关字段
          _formBloc.add(
            FormFieldsUpdateEvent(
              fields: [
                FormFieldConfig(
                  name: 'companyName',
                  type: FormFieldType.text,
                  label: '公司名称',
                  required: true,
                  classNames: 'col-md-12 mb-3',
                ),
                FormFieldConfig(
                  name: 'businessLicense',
                  type: FormFieldType.text,
                  label: '营业执照�?,
                  required: true,
                  classNames: 'col-md-12 mb-3',
                ),
                FormFieldConfig(
                  name: 'industryType',
                  type: FormFieldType.select,
                  label: '行业类型',
                  required: true,
                  classNames: 'col-md-12 mb-3',
                  options: [
                    FormFieldOption(label: '科技', value: 'tech'),
                    FormFieldOption(label: '金融', value: 'finance'),
                    FormFieldOption(label: '制�?, value: 'manufacture'),
                    FormFieldOption(label: '其他', value: 'other'),
                  ],
                ),
              ],
            ),
          );

          // 禁用某些字段
          _formBloc.add(
            const FormFieldDisabledEvent(
              fieldNames: ['fullName'],
              disabled: true,
            ),
          );
        } else if (newValue == 'personal') {
          // 清空公司相关字段并隐�?
          _formBloc.add(
            const FormFieldClearedEvent(
              fieldNames: ['companyName', 'businessLicense', 'industryType'],
            ),
          );

          // 启用个人字段
          _formBloc.add(
            const FormFieldDisabledEvent(
              fieldNames: ['fullName'],
              disabled: false,
            ),
          );
        }
      },
    );

    // 当行业类型改变时（示例）
    _formBloc.registerFieldChangeHandler(
      'industryType',
      (newValue, allFormValues) {
        print('行业类型改变�? $newValue');
        // 可以根据行业类型动态改变其他字�?
      },
    );
  }

  /// 处理完全替换表单的示�?
  void _switchToCompletelyDifferentForm() {
    _formBloc.add(
      FormFieldsUpdateEvent(
        fields: [
          FormFieldConfig(
            name: 'productName',
            type: FormFieldType.text,
            label: '产品名称',
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'category',
            type: FormFieldType.select,
            label: '产品分类',
            required: true,
            classNames: 'col-md-12 mb-3',
            options: [
              FormFieldOption(label: '电子产品', value: 'electronics'),
              FormFieldOption(label: '食品', value: 'food'),
              FormFieldOption(label: '服装', value: 'clothing'),
            ],
          ),
          FormFieldConfig(
            name: 'price',
            type: FormFieldType.number,
            label: '价格',
            required: true,
            classNames: 'col-md-12 mb-3',
          ),
          FormFieldConfig(
            name: 'description',
            type: FormFieldType.textarea,
            label: '产品描述',
            classNames: 'col-md-24 mb-3',
            maxLines: 5,
            minLines: 3,
          ),
        ],
        replaceAll: true, // 完全替换表单
      ),
    );
  }

  /// 处理表单提交
  Future<void> _handleSubmit() async {
    final state = _formKey.currentState;
    if (state is QBlocFormBuilderState) {
      await (state as QBlocFormBuilderState).submit();
    }
  }

  /// 处理表单重置
  void _handleReset() {
    _formBloc.add(const FormResetEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc 驱动的响应式表单'),
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: _switchToCompletelyDifferentForm,
            tooltip: '切换不同的表�?,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: BlocProvider<FormBloc>(
          create: (context) => _formBloc,
          child: Column(
            children: [
              // 表单组件
              QBlocFormBuilder(
                key: _formKey,
                formBloc: _formBloc,
                onSubmit: (formValues) async {
                  print('表单提交: $formValues');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('提交成功: $formValues')),
                  );
                },
                onValidationFailed: (errors) {
                  print('验证失败: $errors');
                },
                gutter: 3,
              ),
              // 按钮�?- 由外层处�?
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _handleSubmit,
                    child: const Text('提交注冊'),
                  ),
                  const SizedBox(width: 16),
                  OutlinedButton(
                    onPressed: _handleReset,
                    child: const Text('清空'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _formBloc.close();
    super.dispose();
  }
}

/// 高级使用示例：动态表单切�?
class AdvancedBlocFormExample extends StatefulWidget {
  const AdvancedBlocFormExample({Key? key}) : super(key: key);

  @override
  State<AdvancedBlocFormExample> createState() =>
      _AdvancedBlocFormExampleState();
}

class _AdvancedBlocFormExampleState extends State<AdvancedBlocFormExample> {
  late FormBloc _formBloc;
  String _currentFormType = 'login';

  @override
  void initState() {
    super.initState();
    _formBloc = FormBloc();
    _loadLoginForm();
  }

  /// 加载登录表单
  void _loadLoginForm() {
    _formBloc.add(
      FormInitializedEvent(
        fields: [
          FormFieldConfig(
            name: 'username',
            type: FormFieldType.text,
            label: '用户�?,
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'password',
            type: FormFieldType.password,
            label: '密码',
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
        ],
      ),
    );
    setState(() => _currentFormType = 'login');
  }

  /// 加载注册表单
  void _loadRegisterForm() {
    _formBloc.add(
      FormInitializedEvent(
        fields: [
          FormFieldConfig(
            name: 'email',
            type: FormFieldType.email,
            label: '邮箱',
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'username',
            type: FormFieldType.text,
            label: '用户�?,
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'password',
            type: FormFieldType.password,
            label: '密码',
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'confirmPassword',
            type: FormFieldType.password,
            label: '确认密码',
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
          FormFieldConfig(
            name: 'agreeTerms',
            type: FormFieldType.checkbox,
            label: '我同意服务条�?,
            required: true,
            classNames: 'col-md-24 mb-3',
          ),
        ],
      ),
    );
    setState(() => _currentFormType = 'register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('高级 Bloc 表单示例'),
        bottom: TabBar(
          tabs: [
            Tab(text: '登录'),
            Tab(text: '注册'),
          ],
          onTap: (index) {
            if (index == 0) {
              _loadLoginForm();
            } else {
              _loadRegisterForm();
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: BlocProvider<FormBloc>(
          create: (context) => _formBloc,
          child: Column(
            children: [
              // 表单组件
              QBlocFormBuilder(
                formBloc: _formBloc,
              ),
              // 按钮�?- 由外层处�?
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 通过 key 调用表单提交方法
                    },
                    child: Text(_currentFormType == 'login' ? '登录' : '注分'),
                  ),
                  const SizedBox(width: 16),
                  OutlinedButton(
                    onPressed: () {
                      _formBloc.add(const FormResetEvent());
                    },
                    child: const Text('重置'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _formBloc.close();
    super.dispose();
  }
}
