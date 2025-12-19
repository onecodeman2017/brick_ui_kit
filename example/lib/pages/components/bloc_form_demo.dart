import 'package:flutter/material.dart';

class BlocFormDemo extends StatelessWidget {
  const BlocFormDemo({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.info, color: Colors.blue),
                  title: Text('Bloc 表单特性'),
                  subtitle: Text('• 动态字段管理\n• 复杂交互处理\n• 状态同步'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('这是一个 Bloc 表单示例')),
                    );
                  },
                  child: const Text('查看详细文档'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
