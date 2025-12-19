# Qoder 响应式表单系统

一个基于 `reactive_forms` 和 `forui` 的强大响应式表单系统，支持多种字段类型、验证规则、响应式栅格布局。

## 功能特性

- ✅ **多种字段类型**: 文本、数字、邮箱、密码、电话、日期、时间、下拉选择、开关、复选框等
- ✅ **强大的验证系统**: 内置验证规则，支持自定义验证
- ✅ **响应式栅格系统**: 基于 Bootstrap 5 的 24 列栅格，支持 xs、sm、md、lg、xl、xxl 断点
- ✅ **ForUI 集成**: 优先使用 ForUI 组件，提供一致的设计风格
- ✅ **自定义字段支持**: 支持自定义字段渲染
- ✅ **条件显示**: 字段可以根据表单值条件显示
- ✅ **无缝状态管理**: 集成 flutter_bloc 的反应式表单

## 核心类

### FormFieldConfig
表单字段的完整配置类，定义了字段的所有属性：

```dart
FormFieldConfig(
  name: 'username',              // 字段名称（唯一标识）
  type: FormFieldType.text,      // 字段类型
  label: '用户名',               // 显示标签
  placeholder: '请输入用户名',    // 占位符
  required: true,                // 是否必填
  gridConfig: GridConfig(md: 12),// 栅格配置
  validations: [...],            // 验证规则
  options: [...],                // 选项列表（用于select等）
  disabled: false,               // 是否禁用
  readOnly: false,               // 是否只读
  defaultValue: '',              // 默认值
)
```

### FormFieldType
字段类型枚举，支持以下类型：

- `text` - 文本输入框
- `number` - 数字输入框
- `email` - 邮箱输入框
- `password` - 密码输入框
- `phone` - 电话号码输入框
- `date` - 日期选择器
- `time` - 时间选择器
- `dateTime` - 日期时间选择器
- `select` - 下拉选择
- `multiSelect` - 多选择
- `switch` - 开关
- `radio` - 单选按钮
- `checkbox` - 复选框
- `textarea` - 文本区域
- `slider` - 滑块
- `custom` - 自定义组件

### GridConfig
响应式栅格配置，基于 Bootstrap 5 的 24 列栅格系统：

```dart
GridConfig(
  xs: 24,   // 超小屏（<576px）
  sm: 12,   // 小屏（≥576px）
  md: 8,    // 中屏（≥768px）
  lg: 6,    // 大屏（≥992px）
  xl: 4,    // 超大屏（≥1200px）
  xxl: 2,   // 2K屏（≥1400px）
)
```

### ValidationRule
验证规则配置：

```dart
ValidationRule(
  required: true,                    // 是否必填
  minLength: 3,                      // 最小长度
  maxLength: 20,                     // 最大长度
  min: 0,                            // 最小值（数字）
  max: 100,                          // 最大值（数字）
  pattern: r'^[a-z]+$',              // 正则表达式
  customValidator: (value) => null,  // 自定义验证函数
  errorMessage: '错误信息',           // 错误消息
)
```

## 使用示例

### 基础表单

```dart
import 'package:brick_ui_kit/qoder/widgets/form.dart';

QReactiveFormBuilder(
  fields: [
    FormFieldConfig(
      name: 'email',
      type: FormFieldType.email,
      label: '邮箱',
      required: true,
      gridConfig: GridConfig(md: 12),
    ),
    FormFieldConfig(
      name: 'password',
      type: FormFieldType.password,
      label: '密码',
      required: true,
      gridConfig: GridConfig(md: 12),
    ),
  ],
  onSubmit: (formValues) async {
    print('提交数据: $formValues');
  },
  submitButtonText: '登录',
)
```

### 复杂表单（包含条件显示）

```dart
FormFieldConfig(
  name: 'userType',
  type: FormFieldType.select,
  label: '用户类型',
  options: [
    FormFieldOption(label: '个人', value: 'personal'),
    FormFieldOption(label: '企业', value: 'company'),
  ],
  gridConfig: GridConfig(md: 24),
),
FormFieldConfig(
  name: 'companyName',
  type: FormFieldType.text,
  label: '公司名称',
  gridConfig: GridConfig(md: 24),
  visibleWhen: (formValues) => formValues['userType'] == 'company',
),
```

### 自定义字段渲染

```dart
QReactiveFormBuilder(
  fields: formFields,
  customFieldBuilder: (fieldConfig, control) {
    if (fieldConfig.type == FormFieldType.custom) {
      return MyCustomWidget(control: control);
    }
    return const SizedBox.shrink();
  },
)
```

## 栅格系统说明

使用 Bootstrap 5 的 24 列栅格系统：

```dart
// 响应式布局示例
FormFieldConfig(
  name: 'fullName',
  type: FormFieldType.text,
  label: '全名',
  gridConfig: GridConfig(
    xs: 24,   // 手机：占满整行
    sm: 24,   // 平板：占满整行
    md: 12,   // 台式机：占半行
    lg: 8,    // 大屏：占1/3
  ),
)
```

## 验证示例

```dart
FormFieldConfig(
  name: 'username',
  type: FormFieldType.text,
  label: '用户名',
  validations: [
    ValidationRule(
      required: true,
      errorMessage: '用户名不能为空',
    ),
    ValidationRule(
      minLength: 3,
      maxLength: 20,
      errorMessage: '用户名长度应在3-20之间',
    ),
    ValidationRule(
      pattern: r'^[a-zA-Z0-9_]+$',
      errorMessage: '用户名只能包含字母、数字和下划线',
    ),
  ],
)
```

## API 参考

### QReactiveFormBuilder

| 属性 | 类型 | 说明 | 默认值 |
|------|------|------|--------|
| fields | List\<FormFieldConfig\> | 表单字段配置列表 | 必需 |
| onSubmit | Future\<void\> Function | 表单提交回调 | null |
| formBuilder | Widget Function | 自定义表单构建函数 | null |
| customFieldBuilder | Widget Function | 自定义字段渲染函数 | null |
| submitButtonText | String | 提交按钮文本 | '提交' |
| resetButtonText | String | 重置按钮文本 | '重置' |
| showResetButton | bool | 是否显示重置按钮 | true |
| buttonAxis | Axis | 按钮布局方向 | Axis.horizontal |
| buttonAlignment | MainAxisAlignment | 按钮对齐方式 | MainAxisAlignment.center |
| onValidationFailed | void Function | 验证失败回调 | null |
| onFormValueChanged | void Function | 表单值变化回调 | null |
| isLoading | bool | 表单加载状态 | false |
| gutter | int | 栅格间距 | 2 |

## 最佳实践

1. **使用类型提示**: 确保 FormControl 的类型与字段类型相匹配
2. **验证规则**: 在客户端进行验证，同时在服务器端进行验证
3. **错误处理**: 使用 onValidationFailed 来处理验证失败
4. **加载状态**: 在提交时显示加载状态，防止重复提交
5. **响应式设计**: 使用 GridConfig 为不同屏幕大小优化布局
6. **条件显示**: 使用 visibleWhen 实现复杂的条件逻辑

## 扩展自定义字段

```dart
FormFieldConfig(
  name: 'custom',
  type: FormFieldType.custom,
  label: '自定义字段',
  gridConfig: GridConfig(md: 12),
)

// 在 customFieldBuilder 中处理
customFieldBuilder: (fieldConfig, control) {
  if (fieldConfig.name == 'custom') {
    return MyCustomWidget(
      control: control as FormControl<MyType>,
    );
  }
  return const SizedBox.shrink();
}
```

## 许可证

MIT
