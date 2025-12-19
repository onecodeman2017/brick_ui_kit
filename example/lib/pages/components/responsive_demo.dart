import 'package:flutter/material.dart';

class ResponsiveDemo extends StatelessWidget {
  const ResponsiveDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '响应式设计',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          '支持多种屏幕尺寸的自适应布局，遵循 Bootstrap 5 断点规范。',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.phone_iphone, color: Colors.blue),
                  title: Text('xs (Extra small)'),
                  subtitle: Text('< 576px'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.phone_android, color: Colors.blue),
                  title: Text('sm (Small)'),
                  subtitle: Text('≥ 576px'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.tablet, color: Colors.blue),
                  title: Text('md (Medium)'),
                  subtitle: Text('≥ 768px'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.laptop, color: Colors.blue),
                  title: Text('lg (Large)'),
                  subtitle: Text('≥ 992px'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.desktop_mac, color: Colors.blue),
                  title: Text('xl (Extra large)'),
                  subtitle: Text('≥ 1200px'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.tv, color: Colors.blue),
                  title: Text('xxl (XXL)'),
                  subtitle: Text('≥ 1400px'),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          '当前屏幕尺寸信息：',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        LayoutBuilder(
          builder: (context, constraints) {
            String breakpoint = 'xxl';
            if (constraints.maxWidth < 576) {
              breakpoint = 'xs';
            } else if (constraints.maxWidth < 768) {
              breakpoint = 'sm';
            } else if (constraints.maxWidth < 992) {
              breakpoint = 'md';
            } else if (constraints.maxWidth < 1200) {
              breakpoint = 'lg';
            } else if (constraints.maxWidth < 1400) {
              breakpoint = 'xl';
            }

            return Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('宽度: ${constraints.maxWidth.toStringAsFixed(0)}px'),
                  Text('断点: $breakpoint'),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
