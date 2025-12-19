import 'package:flutter/material.dart';

class ValidationDemo extends StatelessWidget {
  const ValidationDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '表单验证',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text('支持多种内置验证规则和自定义验证逻辑。', style: TextStyle(color: Colors.grey)),
        const SizedBox(height: 24),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('必填验证'),
                  subtitle: Text('required: true'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('长度验证'),
                  subtitle: Text('minLength / maxLength'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('正则验证'),
                  subtitle: Text('pattern: regex'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.check_circle, color: Colors.green),
                  title: Text('自定义验证'),
                  subtitle: Text('customValidator: function'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
