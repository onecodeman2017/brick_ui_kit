import 'package:flutter/material.dart';
import 'package:brick_ui_kit/qoder/widgets/form.dart';

/// 标签位置演示
class LabelPositionDemo extends StatefulWidget {
  const LabelPositionDemo({Key? key}) : super(key: key);

  @override
  State<LabelPositionDemo> createState() => _LabelPositionDemoState();
}

class _LabelPositionDemoState extends State<LabelPositionDemo> {
  late FormFieldsBloc _formFieldsBloc;
  final GlobalKey<State<QReactiveFormBuilder>> _formKey =
      GlobalKey<State<QReactiveFormBuilder>>();

  @override
  void initState() {
    super.initState();
    _formFieldsBloc = FormFieldsBloc();
    _formFieldsBloc.add(SetFormFieldsEvent(_buildFormFields()));
  }

  List<FormFieldConfig> _buildFormFields() {
    return [
      // 标题说明
      FormFieldConfig(
        name: 'title_top',
        type: FormFieldType.text,
        label: '标签位置演示',
        classNames: 'col-md-24 mb-4',
        labelPosition: LabelPosition.none,
        defaultValue: '以下展示5种不同的标签位置效果',
        readOnly: true,
      ),

      // 1. top - 标签在上方（默认）
      FormFieldConfig(
        name: 'top_username',
        type: FormFieldType.text,
        label: '用户名（标签在上方）',
        placeholder: '请输入用户名',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.top,
      ),

      FormFieldConfig(
        name: 'top_email',
        type: FormFieldType.email,
        label: '邮箱（标签在上方）',
        placeholder: '请输入邮箱',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.top,
      ),

      // 2. left - 标签在左侧
      FormFieldConfig(
        name: 'left_phone',
        type: FormFieldType.phone,
        label: '电话（标签在左侧）',
        placeholder: '请输入电话',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.left,
      ),

      FormFieldConfig(
        name: 'left_address',
        type: FormFieldType.text,
        label: '地址（标签在左侧）',
        placeholder: '请输入地址',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.left,
      ),

      // 3. floatingCenter - 浮动标签靠左居中
      FormFieldConfig(
        name: 'floating_center_name',
        type: FormFieldType.text,
        label: '姓名（浮动靠左）',
        placeholder: '',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingCenter,
      ),

      FormFieldConfig(
        name: 'floating_center_company',
        type: FormFieldType.text,
        label: '公司名称（浮动靠左）',
        placeholder: '',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingCenter,
      ),

      // 4. floatingBelow - 浮动标签在边框下4px
      FormFieldConfig(
        name: 'floating_below_title',
        type: FormFieldType.text,
        label: '职位（浮动边框下）',
        placeholder: '',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingBelow,
      ),

      FormFieldConfig(
        name: 'floating_below_department',
        type: FormFieldType.text,
        label: '部门（浮动边框下）',
        placeholder: '',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingBelow,
      ),

      // 5. none - 无标签
      FormFieldConfig(
        name: 'none_password',
        type: FormFieldType.password,
        label: '',
        placeholder: '密码（无标签）',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.none,
      ),

      FormFieldConfig(
        name: 'none_confirm',
        type: FormFieldType.password,
        label: '',
        placeholder: '确认密码（无标签）',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.none,
      ),

      // 混合使用示例
      FormFieldConfig(
        name: 'mixed_date',
        type: FormFieldType.date,
        label: '出生日期（上方）',
        classNames: 'col-md-8 mb-3',
        labelPosition: LabelPosition.top,
      ),

      FormFieldConfig(
        name: 'mixed_gender',
        type: FormFieldType.select,
        label: '性别（左侧）',
        classNames: 'col-md-8 mb-3',
        labelPosition: LabelPosition.left,
        options: [
          FormFieldOption(label: '男', value: 'male'),
          FormFieldOption(label: '女', value: 'female'),
        ],
      ),

      FormFieldConfig(
        name: 'mixed_hobby',
        type: FormFieldType.text,
        label: '爱好（浮动靠左）',
        classNames: 'col-md-8 mb-3',
        labelPosition: LabelPosition.floatingCenter,
      ),

      // 文本域示例
      FormFieldConfig(
        name: 'bio_top',
        type: FormFieldType.textarea,
        label: '个人简介（标签在上方）',
        placeholder: '请输入个人简介',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.top,
        maxLines: 4,
      ),

      FormFieldConfig(
        name: 'bio_floating',
        type: FormFieldType.textarea,
        label: '备注（浮动标签）',
        placeholder: '',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingBelow,
        maxLines: 4,
      ),

      // 下拉选择示例
      FormFieldConfig(
        name: 'select_top',
        type: FormFieldType.select,
        label: '国家（上方）',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.top,
        options: [
          FormFieldOption(label: '中国', value: 'cn'),
          FormFieldOption(label: '美国', value: 'us'),
          FormFieldOption(label: '日本', value: 'jp'),
        ],
      ),

      FormFieldConfig(
        name: 'select_floating',
        type: FormFieldType.select,
        label: '城市（浮动）',
        classNames: 'col-md-12 mb-3',
        labelPosition: LabelPosition.floatingCenter,
        options: [
          FormFieldOption(label: '北京', value: 'bj'),
          FormFieldOption(label: '上海', value: 'sh'),
          FormFieldOption(label: '深圳', value: 'sz'),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 说明卡片
        Card(
          color: Colors.blue.shade50,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '标签位置说明',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900,
                  ),
                ),
                const SizedBox(height: 12),
                _buildLabelInfo('top', '标签在输入框上方（默认）', Colors.green),
                _buildLabelInfo('left', '标签在输入框左侧（120px宽）', Colors.orange),
                _buildLabelInfo(
                  'floatingCenter',
                  '浮动标签居中于上边框（Material风格）',
                  Colors.purple,
                ),
                _buildLabelInfo('floatingBelow', '浮动标签在上边框下4px', Colors.pink),
                _buildLabelInfo('none', '无标签（仅占位符）', Colors.grey),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),

        // 表单
        QReactiveFormBuilder(
          key: _formKey,
          formFieldsBloc: _formFieldsBloc,
          gutter: 3,
        ),

        const SizedBox(height: 24),

        // 按钮
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QReactiveFormBuilderState) {
                  final values = (state as QReactiveFormBuilderState)
                      .getFormValues();
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('表单值: $values')));
                }
              },
              icon: const Icon(Icons.visibility),
              label: const Text('查看表单值'),
            ),
            const SizedBox(width: 16),
            OutlinedButton.icon(
              onPressed: () {
                final state = _formKey.currentState;
                if (state is QReactiveFormBuilderState) {
                  (state as QReactiveFormBuilderState).reset();
                }
              },
              icon: const Icon(Icons.refresh),
              label: const Text('重置'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLabelInfo(String position, String description, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 120,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: color),
            ),
            child: Text(
              position,
              style: TextStyle(
                color: color,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(description, style: const TextStyle(fontSize: 13)),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _formFieldsBloc.close();
    super.dispose();
  }
}
