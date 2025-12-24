import 'package:flutter/material.dart';
import 'home_page.dart';
import 'components/label_position_demo.dart';
import 'components/reactive_form_demo.dart';
import 'components/bloc_form_demo.dart';
import 'components/form_fields_demo.dart';
import 'components/validation_demo.dart';
import 'components/grid_layout_demo.dart';
import 'components/responsive_demo.dart';

class ComponentDetailPage extends StatelessWidget {
  final String componentId;
  final ComponentInfo componentInfo;

  const ComponentDetailPage({
    Key? key,
    required this.componentId,
    required this.componentInfo,
  }) : super(key: key);

  /// 根据组件 ID 返回对应的演示组件
  Widget _buildComponentDemo() {
    switch (componentId) {
      case 'label_position':
        return const LabelPositionDemo();
      case 'reactive_form':
        return const ReactiveFormDemo();
      case 'bloc_form':
        return const BlocFormDemo();
      case 'form_fields':
        return const FormFieldsDemo();
      case 'validation':
        return const ValidationDemo();
      case 'grid_layout':
        return const GridLayoutDemo();
      case 'responsive':
        return const ResponsiveDemo();
      default:
        return const Center(child: Text('未找到该组件'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(componentInfo.icon, color: Colors.white),
            const SizedBox(width: 12),
            Text(componentInfo.name),
          ],
        ),
        backgroundColor: Colors.blue,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 组件信息头
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border(
                  bottom: BorderSide(color: Colors.blue.shade200, width: 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    componentInfo.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    componentInfo.description,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
            // 组件演示区域
            Padding(
              padding: const EdgeInsets.all(24),
              child: _buildComponentDemo(),
            ),
          ],
        ),
      ),
    );
  }
}
