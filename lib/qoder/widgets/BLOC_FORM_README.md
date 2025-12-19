# Qoder Bloc 驱动的响应式表单系统

一个完整的基于 Bloc 的表单管理系统，支持动态字段配置、条件字段显示、表单值同步、事件驱动的表单逻辑。

## 核心特性

- ✅ **Bloc 驱动**: 使用 flutter_bloc 管理表单状态和业务逻辑
- ✅ **动态字段**: 支持运行时添加、删除、修改表单字段
- ✅ **事件系统**: 完整的事件驱动架构，支持复杂的表单交互
- ✅ **字段变化处理**: 注册字段变化回调，自动触发相关逻辑
- ✅ **表单替换**: 支持完全替换整个表单配置
- ✅ **条件字段显示**: 根据表单值动态显示/隐藏字段
- ✅ **字段禁用/启用**: 动态控制字段的禁用状态
- ✅ **完整验证**: 集成表单验证和错误处理
- ✅ **响应式栅格**: 基于 Bootstrap 5 的响应式布局

## 核心类说明

### FormBloc

表单业务逻辑组件，管理表单的所有状态和业务逻辑。

```dart
final formBloc = FormBloc(
  initialFields: [
    FormFieldConfig(...),
    FormFieldConfig(...),
  ],
);

// 注册字段变化处理器
formBloc.registerFieldChangeHandler(
  'fieldName',
  (newValue, allFormValues) {
    // 处理字段变化逻辑
  },
);

// 注册自定义动作处理器
formBloc.registerActionHandler(
  'actionName',
  (payload) {
    // 处理自定义动作
  },
);
```

### 事件系统

| 事件类 | 说明 | 示例 |
|--------|------|------|
| FormInitializedEvent | 初始化表单 | `FormInitializedEvent(fields: [...])` |
| FormFieldChangedEvent | 字段值变化 | `FormFieldChangedEvent(fieldName: 'email', newValue: 'test@example.com')` |
| FormFieldsUpdateEvent | 更新多个字段配置 | `FormFieldsUpdateEvent(fields: [...], replaceAll: true)` |
| FormSingleFieldUpdateEvent | 更新单个字段 | `FormSingleFieldUpdateEvent(fieldName: 'email', fieldConfig: ...)` |
| FormFieldClearedEvent | 清空字段值 | `FormFieldClearedEvent(fieldNames: ['field1', 'field2'])` |
| FormFieldDisabledEvent | 禁用/启用字段 | `FormFieldDisabledEvent(fieldNames: ['email'], disabled: true)` |
| FormFieldVisibilityChangedEvent | 显示/隐藏字段 | `FormFieldVisibilityChangedEvent(fieldNames: ['company'], visible: true)` |
| FormValidateEvent | 验证表单 | `FormValidateEvent()` |
| FormResetEvent | 重置表单 | `FormResetEvent()` |
| FormSubmitEvent | 提交表单 | `FormSubmitEvent()` |
| FormActionEvent | 自定义动作 | `FormActionEvent(actionName: 'custom', payload: {...})` |

### 状态系统

| 状态类 | 说明 |
|--------|------|
| FormInitialState | 初始状态 |
| FormLoadingState | 加载中 |
| FormUpdatedState | 已更新 |
| FormValidState | 验证成功 |
| FormInvalidState | 验证失败 |
| FormSubmittedState | 提交成功 |
| FormSubmitFailedState | 提交失败 |
| FormErrorState | 错误状态 |
| FormResetState | 重置状态 |

## 使用示例

### 基础用法

```dart
class MyFormPage extends StatefulWidget {
  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  late FormBloc _formBloc;

  @override
  void initState() {
    super.initState();
    _formBloc = FormBloc(
      initialFields: [
        FormFieldConfig(
          name: 'email',
          type: FormFieldType.email,
          label: '邮箱',
          required: true,
          gridConfig: GridConfig(md: 24),
        ),
        FormFieldConfig(
          name: 'password',
          type: FormFieldType.password,
          label: '密码',
          required: true,
          gridConfig: GridConfig(md: 24),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FormBloc>(
        create: (context) => _formBloc,
        child: QBlocFormBuilder(
          formBloc: _formBloc,
          submitButtonText: '登录',
        ),
      ),
    );
  }

  @override
  void dispose() {
    _formBloc.close();
    super.dispose();
  }
}
```

### 监听字段变化并动态更新表单

```dart
_formBloc.registerFieldChangeHandler(
  'userType',
  (newValue, allFormValues) {
    if (newValue == 'company') {
      // 添加公司相关字段
      _formBloc.add(
        FormFieldsUpdateEvent(
          fields: [
            FormFieldConfig(
              name: 'companyName',
              type: FormFieldType.text,
              label: '公司名称',
              required: true,
              gridConfig: GridConfig(md: 24),
            ),
          ],
        ),
      );

      // 清空个人字段
      _formBloc.add(
        const FormFieldClearedEvent(fieldNames: ['personalId']),
      );

      // 禁用某些字段
      _formBloc.add(
        const FormFieldDisabledEvent(
          fieldNames: ['personalFields'],
          disabled: true,
        ),
      );
    }
  },
);
```

### 完全替换表单

```dart
// 当需要切换到完全不同的表单时
_formBloc.add(
  FormFieldsUpdateEvent(
    fields: [
      FormFieldConfig(
        name: 'productName',
        type: FormFieldType.text,
        label: '产品名称',
        gridConfig: GridConfig(md: 24),
      ),
      // ... 其他字段
    ],
    replaceAll: true, // 完全替换整个表单
  ),
);
```

### 监听表单状态变化

```dart
BlocListener<FormBloc, FormState>(
  bloc: _formBloc,
  listener: (context, state) {
    if (state is FormSubmittedState) {
      print('表单提交成功');
      print('表单值: ${state.formValues}');
    }
    if (state is FormInvalidState) {
      print('表单验证失败');
      print('错误: ${state.validationErrors}');
    }
  },
  child: YourWidget(),
)
```

### 自定义动作处理

```dart
// 注册自定义动作
_formBloc.registerActionHandler(
  'submitWithCustomLogic',
  (payload) {
    print('执行自定义动作');
    print('负载: $payload');
  },
);

// 触发自定义动作
_formBloc.add(
  FormActionEvent(
    actionName: 'submitWithCustomLogic',
    payload: {'custom': 'data'},
  ),
);
```

## 高级场景

### 场景 1：选择用户类型后动态改变表单

```dart
_formBloc.registerFieldChangeHandler(
  'userType',
  (newValue, allFormValues) {
    switch (newValue) {
      case 'personal':
        _formBloc.add(
          FormFieldsUpdateEvent(
            fields: _buildPersonalFields(),
            replaceAll: true,
          ),
        );
        break;
      case 'company':
        _formBloc.add(
          FormFieldsUpdateEvent(
            fields: _buildCompanyFields(),
            replaceAll: true,
          ),
        );
        break;
    }
  },
);
```

### 场景 2：根据某个选择清空和禁用其他字段

```dart
_formBloc.registerFieldChangeHandler(
  'paymentMethod',
  (newValue, allFormValues) {
    if (newValue == 'credit_card') {
      // 显示信用卡字段
      _formBloc.add(
        const FormFieldVisibilityChangedEvent(
          fieldNames: ['cardNumber', 'cvv'],
          visible: true,
        ),
      );
      // 隐藏其他支付方式字段
      _formBloc.add(
        const FormFieldVisibilityChangedEvent(
          fieldNames: ['bankAccount', 'transferCode'],
          visible: false,
        ),
      );
    }
  },
);
```

### 场景 3：表单项间依赖（某字段必须在另一字段填写后才能填写）

```dart
_formBloc.registerFieldChangeHandler(
  'country',
  (newValue, allFormValues) {
    // 只有选择了国家后，城市字段才能启用
    _formBloc.add(
      FormFieldDisabledEvent(
        fieldNames: ['city'],
        disabled: newValue == null || newValue.isEmpty,
      ),
    );
  },
);
```

## API 参考

### FormBloc 方法

| 方法 | 说明 |
|------|------|
| `registerFieldChangeHandler(fieldName, handler)` | 注册字段变化处理器 |
| `registerActionHandler(actionName, handler)` | 注册自定义动作处理器 |
| `updateFieldValue(fieldName, value)` | 直接更新字段值（无事件） |
| `updateFieldValues(values)` | 批量更新字段值 |
| `getField(fieldName)` | 获取字段配置 |
| `getFieldValue(fieldName)` | 获取字段值 |
| `add(event)` | 触发事件 |
| `close()` | 关闭 Bloc |

### QBlocFormBuilder 属性

| 属性 | 类型 | 说明 | 默认值 |
|------|------|------|--------|
| formBloc | FormBloc | 表单 Bloc（必需） | - |
| onSubmit | Future Function | 提交回调 | null |
| customFieldBuilder | Widget Function | 自定义字段渲染 | null |
| submitButtonText | String | 提交按钮文本 | '提交' |
| resetButtonText | String | 重置按钮文本 | '重置' |
| showResetButton | bool | 显示重置按钮 | true |
| buttonAxis | Axis | 按钮布局方向 | Axis.horizontal |
| buttonAlignment | MainAxisAlignment | 按钮对齐 | MainAxisAlignment.center |
| onValidationFailed | void Function | 验证失败回调 | null |
| onFormValueChanged | void Function | 值变化回调 | null |
| gutter | int | 栅格间距 | 2 |

## 最佳实践

1. **使用字段变化处理器而不是直接修改状态**
   - 好的做法：注册 `fieldChangeHandler`，在其中触发相关事件
   - 不好的做法：直接修改 `_formBloc.updateFieldValue()`

2. **完全替换表单时使用 `replaceAll: true`**
   ```dart
   FormFieldsUpdateEvent(
     fields: newFields,
     replaceAll: true, // 避免字段重复
   )
   ```

3. **监听 Bloc 状态变化而不是手动跟踪**
   - 使用 `BlocListener` 监听状态变化
   - 使用 `BlocBuilder` 重建 UI

4. **为复杂的表单逻辑使用自定义动作**
   - 定义明确的动作名称
   - 在 Bloc 中集中处理逻辑

5. **合理使用字段可见性控制**
   - 使用 `visibleWhen` 属性进行条件显示
   - 使用 `FormFieldVisibilityChangedEvent` 动态改变可见性

## 故障排查

### 问题：字段改变后表单没有更新
**解决方案**：确保触发了正确的事件，检查 `BlocListener` 或 `BlocBuilder` 是否在监听

### 问题：字段值改变触发了多次处理器
**解决方案**：在处理器中添加检查条件，避免不必要的处理

### 问题：表单替换后仍看到旧字段
**解决方案**：确保使用 `replaceAll: true` 来完全替换表单

## 许可证

MIT
