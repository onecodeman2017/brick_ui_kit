import 'package:flutter/material.dart';

class GridLayoutDemo extends StatelessWidget {
  const GridLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bootstrap 5 栅格布局',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        const Text(
          '基于 Bootstrap 5 的 24 列响应式栅格系统，支持多个断点。',
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        Column(
          children: [
            // 示例 1: 2 列等分
            const Text(
              '2 列等分 (col-md-12)',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Text('Col 1 (12)'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 12,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      border: Border.all(color: Colors.blue),
                    ),
                    child: const Text('Col 2 (12)'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 示例 2: 3 列等分
            const Text(
              '3 列等分 (col-md-8)',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      border: Border.all(color: Colors.green),
                    ),
                    child: const Text('Col 1 (8)'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      border: Border.all(color: Colors.green),
                    ),
                    child: const Text('Col 2 (8)'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 8,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      border: Border.all(color: Colors.green),
                    ),
                    child: const Text('Col 3 (8)'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 示例 3: 不等分
            const Text(
              '不等分 (col-md-6, col-md-12, col-md-6)',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Text('Col 1 (6)'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 12,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Text('Col 2 (12)'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Text('Col 3 (6)'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
