import 'package:flutter/material.dart';
import 'component_detail_page.dart';

/// 组件信息
class ComponentInfo {
  final String id;
  final String name;
  final String description;
  final IconData icon;

  ComponentInfo({
    required this.id,
    required this.name,
    required this.description,
    required this.icon,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 所有可用的组件列表
  final List<ComponentInfo> components = [
    ComponentInfo(
      id: 'label_position',
      name: '标签位置演示',
      description: '5种不同的标签位置效果展示',
      icon: Icons.label,
    ),
    ComponentInfo(
      id: 'reactive_form',
      name: '响应式表单',
      description: '基于 forUI 组件的表单系统',
      icon: Icons.assignment,
    ),
    ComponentInfo(
      id: 'bloc_form',
      name: 'Bloc 驱动表单',
      description: '使用 Flutter Bloc 管理表单状态',
      icon: Icons.dashboard,
    ),
    ComponentInfo(
      id: 'form_fields',
      name: '表单字段',
      description: '文本、选择、日期等多种字段类型',
      icon: Icons.input,
    ),
    ComponentInfo(
      id: 'validation',
      name: '表单验证',
      description: '内置验证规则和自定义验证',
      icon: Icons.verified_user,
    ),
    ComponentInfo(
      id: 'grid_layout',
      name: '栅格布局',
      description: 'Bootstrap 5 响应式栅格系统',
      icon: Icons.grid_3x3,
    ),
    ComponentInfo(
      id: 'responsive',
      name: '响应式设计',
      description: '支持多种屏幕尺寸的自适应布局',
      icon: Icons.phone_iphone,
    ),
  ];

  String? selectedComponentId;

  @override
  void initState() {
    super.initState();
    // 默认选中第一个组件
    if (components.isNotEmpty) {
      selectedComponentId = components.first.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Brick UI Kit 组件库'), elevation: 2),
      body: Row(
        children: [
          // 左侧菜单
          Material(
            elevation: 1,
            child: SizedBox(
              width: 280,
              child: Column(
                children: [
                  // 菜单标题
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '所有组件',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '共 ${components.length} 个组件',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 组件列表
                  Expanded(
                    child: ListView.builder(
                      itemCount: components.length,
                      itemBuilder: (context, index) {
                        final component = components[index];
                        final isSelected = selectedComponentId == component.id;

                        return Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey.shade100,
                                width: 1,
                              ),
                            ),
                          ),
                          child: ListTile(
                            leading: Icon(
                              component.icon,
                              color: isSelected
                                  ? Colors.blue
                                  : Colors.grey.shade600,
                            ),
                            title: Text(
                              component.name,
                              style: TextStyle(
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: isSelected
                                    ? Colors.blue
                                    : Colors.black87,
                              ),
                            ),
                            subtitle: Text(
                              component.description,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey.shade600,
                              ),
                            ),
                            selected: isSelected,
                            selectedTileColor: Colors.blue.shade50,
                            onTap: () {
                              setState(() {
                                selectedComponentId = component.id;
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          // 右侧内容区域
          Expanded(
            child: selectedComponentId != null
                ? ComponentDetailPage(
                    componentId: selectedComponentId!,
                    componentInfo: components.firstWhere(
                      (c) => c.id == selectedComponentId,
                    ),
                  )
                : const Center(child: Text('请在左侧选择一个组件')),
          ),
        ],
      ),
    );
  }
}
