# AGENTS.md

## Build Commands
- `flutter pub get` - Get dependencies
- `flutter clean` - Clean build artifacts
- `flutter pub run build_runner build --delete-conflicting-outputs` - Generate code (freezed/json_serializable)
- `flutter analyze` - Run static analysis
- `flutter test` - Run all tests
- `flutter test test/path/to/test_file.dart` - Run single test
- `flutter build apk --debug` - Build Android debug
- `flutter build apk --release` - Build Android release
- `flutter build web --release --wasm` - Build web with WASM

## Code Style Guidelines

### General
- Use flutter_bloc for all state management
- Prioritize forui components over Material components
- All styles must come from theme configuration
- Use freezed for data models with abstract class modifier
- Support both light and dark themes on all pages
- Check context.mounted/widget.mounted for async operations
- Show loading indicators and disable interactions during loading
- This library is built on top of forui and brick_bootstrap5_plus
- Leverage bootstrap5 styling patterns with forui components
- Follow responsive design principles from bootstrap5 framework
- Use forui for internationalization (i18n) and localization
- Use forui theming system for skin/theme management
- All components must support both internationalization and theming
- Use freezed for all applicable classes except UI components
- Place component type definitions within the component file for easy viewing and portability

### Import Organization
- Group imports: dart, flutter, third-party, local
- Use relative imports for local files
- Sort imports alphabetically within groups

### Naming Conventions
- camelCase for variables and functions
- PascalCase for classes and files
- UPPER_SNAKE_CASE for constants
- Use descriptive names with clear intent

### Error Handling
- Use try-catch blocks for async operations
- Handle exceptions gracefully with user-friendly messages
- Use forui toast components for notifications

### UI Guidelines
- Prefer normal layouts over Stack/Position widgets
- Use material_symbols_icons for all icons (no SVG)
- All forms must use Form component for validation
- Wrap pages with BlocBuilder for theme responsiveness
- Use FTextFormField instead of TextFormField
- All component names must start with 'B' prefix
- All custom components created by opencode should be placed in opencode/widgets directory

### Memory Management
- Dispose resources properly in dispose methods
- Close streams, cancel timers, remove listeners
- Use const constructors where possible

### Navigation
- Use Get.toNamed for route navigation

### Constants
- Use UPPER_SNAKE_CASE for constant naming


# AGENTS.md

## 构建命令
- `flutter pub get` - 获取依赖项
- `flutter clean` - 清理构建产物
- `flutter pub run build_runner build --delete-conflicting-outputs` - 生成代码（freezed/json_serializable）
- `flutter analyze` - 运行静态分析
- `flutter test` - 运行所有测试
- `flutter test test/path/to/test_file.dart` - 运行单个测试
- `flutter build apk --debug` - 构建 Android 调试版
- `flutter build apk --release` - 构建 Android 发布版
- `flutter build web --release --wasm` - 构建带有 WASM 的 Web 版本
## 代码风格指南
### 通用
- 所有状态管理均采用 flutter_bloc
- 优先使用 forui 组件而非 Material 组件
- 所有样式必须来自主题配置
- 对于数据模型使用 freezed 并添加抽象类修饰符
- 所有页面均支持浅色和深色主题
- 异步操作时检查 context.mounted 或 widget.mounted
- 加载期间显示加载指示器并禁用交互
- 本库基于 forui 和 brick_bootstrap5_plus 构建
- 利用 bootstrap5 样式模式与 forui 组件
- 遵循 bootstrap5 框架的响应式设计原则
- 使用 forui 进行国际化（i18n）和本地化
- 使用 forui 主题系统进行皮肤/主题管理
- 所有组件必须支持国际化和主题
- 除 UI 组件外，所有适用的类都使用 freezed
- 组件类型定义放在当前组件文件中，便于查看和移植
### 导入组织
- 分组导入：dart、flutter、第三方、本地
- 对于本地文件使用相对导入
- 在各组内按字母顺序排列导入项
### 命名约定
- 变量和函数使用驼峰命名法（camelCase）
- 类和文件使用帕斯卡命名法（PascalCase）
- 常量使用大写蛇形命名法（UPPER_SNAKE_CASE）
- 使用具有明确意图的描述性名称
### 错误处理
- 对异步操作使用 try-catch 块
- 以友好的消息优雅地处理异常
- 使用 forui 通知组件进行提示
### 用户界面指南
- 优先使用常规布局而非堆叠/定位部件
- 所有图标均使用 material_symbols_icons（不使用 SVG）
- 所有表单必须使用 Form 组件进行验证
- 用 BlocBuilder 包裹页面以实现主题响应性
- 使用 FTextFormField 替代 TextFormField
- 所有组件名称必须以 'B' 前缀开头
- 所有自定义组件创建由 opencode 的应放置在 opencode/widgets 目录
### 内存管理
- 在析构方法中正确释放资源
- 关闭流、取消计时器、移除监听器
- 尽可能使用常量构造函数
### 导航
- 使用 Get.toNamed 进行路由导航
### 常量
- 常量命名请使用大写蛇形命名法（UPPER_SNAKE_CASE）