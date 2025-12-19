import 'package:flutter/material.dart';

class FormFieldsDemo extends StatelessWidget {
  const FormFieldsDemo({Key? key}) : super(key: key);

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
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _buildFieldChip('文本输入', Icons.text_fields),
            _buildFieldChip('邮箱', Icons.email),
            _buildFieldChip('密码', Icons.lock),
            _buildFieldChip('电话', Icons.phone),
            _buildFieldChip('日期', Icons.calendar_today),
            _buildFieldChip('时间', Icons.access_time),
            _buildFieldChip('下拉选择', Icons.arrow_drop_down),
            _buildFieldChip('单选按钮', Icons.radio_button_checked),
            _buildFieldChip('复选框', Icons.check_box),
            _buildFieldChip('开关', Icons.toggle_on),
            _buildFieldChip('滑块', Icons.tune),
            _buildFieldChip('文本框', Icons.description),
          ],
        ),
      ],
    );
  }

  Widget _buildFieldChip(String label, IconData icon) {
    return Chip(
      avatar: Icon(icon, size: 18),
      label: Text(label),
      backgroundColor: Colors.blue.shade50,
      side: BorderSide(color: Colors.blue.shade200),
    );
  }
}
