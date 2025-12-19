import 'package:flutter_bloc/flutter_bloc.dart';
import '../form_field_type.dart';
import 'form_event.dart';
import 'form_state.dart';

/// 表单业务逻辑组件
class FormBloc extends Bloc<FormEvent, FormState> {
  /// 表单值
  late Map<String, dynamic> _formValues;

  /// 初始字段配置
  late List<FormFieldConfig> _fields;

  /// 字段变化的回调处理器
  /// key: 字段名称, value: 当字段值改变时的回调
  final Map<String,
          Function(dynamic newValue, Map<String, dynamic> allFormValues)>
      fieldChangeHandlers = {};

  /// 动作处理器
  /// key: 动作名称, value: 动作处理函数
  final Map<String, Function(Map<String, dynamic>? payload)> actionHandlers =
      {};

  FormBloc({
    List<FormFieldConfig> initialFields = const [],
  })  : _fields = initialFields,
        _formValues = _initializeFormValues(initialFields),
        super(
          FormInitialState(
            fields: initialFields,
            formValues: _initializeFormValues(initialFields),
          ),
        ) {
    // 注册事件处理器
    on<FormInitializedEvent>(_onFormInitialized);
    on<FormFieldChangedEvent>(_onFormFieldChanged);
    on<FormFieldsUpdateEvent>(_onFormFieldsUpdate);
    on<FormSingleFieldUpdateEvent>(_onFormSingleFieldUpdate);
    on<FormFieldClearedEvent>(_onFormFieldCleared);
    on<FormFieldDisabledEvent>(_onFormFieldDisabled);
    on<FormFieldVisibilityChangedEvent>(_onFormFieldVisibilityChanged);
    on<FormValidateEvent>(_onFormValidate);
    on<FormResetEvent>(_onFormReset);
    on<FormSubmitEvent>(_onFormSubmit);
    on<FormActionEvent>(_onFormAction);
  }

  /// 初始化表单值
  static Map<String, dynamic> _initializeFormValues(
    List<FormFieldConfig> fields,
  ) {
    final values = <String, dynamic>{};
    for (final field in fields) {
      values[field.name] = field.defaultValue;
    }
    return values;
  }

  /// 获取当前字段列表
  List<FormFieldConfig> get fields => _fields;

  /// 获取当前表单值
  Map<String, dynamic> get formValues => Map.unmodifiable(_formValues);

  /// 注册字段变化处理器
  void registerFieldChangeHandler(
    String fieldName,
    Function(dynamic newValue, Map<String, dynamic> allFormValues) handler,
  ) {
    fieldChangeHandlers[fieldName] = handler;
  }

  /// 注册动作处理器
  void registerActionHandler(
    String actionName,
    Function(Map<String, dynamic>? payload) handler,
  ) {
    actionHandlers[actionName] = handler;
  }

  /// 处理表单初始化事件
  Future<void> _onFormInitialized(
    FormInitializedEvent event,
    Emitter<FormState> emit,
  ) async {
    _fields = event.fields;
    _formValues = _initializeFormValues(event.fields);

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: _formValues,
        validationErrors: const {},
        isValid: true,
        reason: 'initialized',
      ),
    );
  }

  /// 处理字段值变化事件
  Future<void> _onFormFieldChanged(
    FormFieldChangedEvent event,
    Emitter<FormState> emit,
  ) async {
    _formValues[event.fieldName] = event.newValue;

    // 调用字段变化处理器
    final handler = fieldChangeHandlers[event.fieldName];
    if (handler != null) {
      handler(event.newValue, Map.unmodifiable(_formValues));
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: 'fieldChanged:${event.fieldName}',
      ),
    );
  }

  /// 处理表单字段配置更新事件
  Future<void> _onFormFieldsUpdate(
    FormFieldsUpdateEvent event,
    Emitter<FormState> emit,
  ) async {
    if (event.replaceAll) {
      // 完全替换表单配置
      _fields = event.fields;
      _formValues = _initializeFormValues(event.fields);
    } else {
      // 更新或添加字段
      final existingFieldNames = _fields.map((f) => f.name).toSet();
      for (final newField in event.fields) {
        if (existingFieldNames.contains(newField.name)) {
          // 更新现有字段
          final index = _fields.indexWhere((f) => f.name == newField.name);
          _fields[index] = newField;
        } else {
          // 添加新字段
          _fields.add(newField);
          _formValues[newField.name] = newField.defaultValue;
        }
      }
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: event.replaceAll ? 'fieldsReplaced' : 'fieldsUpdated',
      ),
    );
  }

  /// 处理单个字段更新事件
  Future<void> _onFormSingleFieldUpdate(
    FormSingleFieldUpdateEvent event,
    Emitter<FormState> emit,
  ) async {
    final index = _fields.indexWhere((f) => f.name == event.fieldName);
    if (index >= 0) {
      _fields[index] = event.fieldConfig;
    } else {
      _fields.add(event.fieldConfig);
      _formValues[event.fieldName] = event.fieldConfig.defaultValue;
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: 'fieldUpdated:${event.fieldName}',
      ),
    );
  }

  /// 处理字段值清空事件
  Future<void> _onFormFieldCleared(
    FormFieldClearedEvent event,
    Emitter<FormState> emit,
  ) async {
    for (final fieldName in event.fieldNames) {
      _formValues[fieldName] = null;
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: 'fieldsCleared',
      ),
    );
  }

  /// 处理字段禁用事件
  Future<void> _onFormFieldDisabled(
    FormFieldDisabledEvent event,
    Emitter<FormState> emit,
  ) async {
    for (final fieldName in event.fieldNames) {
      final index = _fields.indexWhere((f) => f.name == fieldName);
      if (index >= 0) {
        final field = _fields[index];
        _fields[index] = FormFieldConfig(
          name: field.name,
          type: field.type,
          label: field.label,
          placeholder: field.placeholder,
          helperText: field.helperText,
          defaultValue: field.defaultValue,
          required: field.required,
          validations: field.validations,
          options: field.options,
          disabled: event.disabled,
          readOnly: field.readOnly,
          gridConfig: field.gridConfig,
          description: field.description,
          extra: field.extra,
          prefixIcon: field.prefixIcon,
          suffixIcon: field.suffixIcon,
          maxLines: field.maxLines,
          minLines: field.minLines,
          prefix: field.prefix,
          suffix: field.suffix,
          visibleWhen: field.visibleWhen,
          visible: field.visible,
        );
      }
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: event.disabled ? 'fieldsDisabled' : 'fieldsEnabled',
      ),
    );
  }

  /// 处理字段显示隐藏事件
  Future<void> _onFormFieldVisibilityChanged(
    FormFieldVisibilityChangedEvent event,
    Emitter<FormState> emit,
  ) async {
    for (final fieldName in event.fieldNames) {
      final index = _fields.indexWhere((f) => f.name == fieldName);
      if (index >= 0) {
        final field = _fields[index];
        _fields[index] = FormFieldConfig(
          name: field.name,
          type: field.type,
          label: field.label,
          placeholder: field.placeholder,
          helperText: field.helperText,
          defaultValue: field.defaultValue,
          required: field.required,
          validations: field.validations,
          options: field.options,
          disabled: field.disabled,
          readOnly: field.readOnly,
          gridConfig: field.gridConfig,
          description: field.description,
          extra: field.extra,
          prefixIcon: field.prefixIcon,
          suffixIcon: field.suffixIcon,
          maxLines: field.maxLines,
          minLines: field.minLines,
          prefix: field.prefix,
          suffix: field.suffix,
          visibleWhen: field.visibleWhen,
          visible: event.visible,
        );
      }
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: event.visible ? 'fieldsShown' : 'fieldsHidden',
      ),
    );
  }

  /// 处理表单验证事件
  Future<void> _onFormValidate(
    FormValidateEvent event,
    Emitter<FormState> emit,
  ) async {
    final errors = <String, String>{};

    for (final field in _fields) {
      if (!field.visible) continue;

      final value = _formValues[field.name];

      // 检查必填
      if (field.required && (value == null || value.toString().isEmpty)) {
        errors[field.name] = '${field.label}不能为空';
        continue;
      }

      // 检查验证规则
      if (field.validations != null && field.validations!.isNotEmpty) {
        for (final validation in field.validations!) {
          if (validation.minLength != null &&
              value != null &&
              value.toString().length < validation.minLength!) {
            errors[field.name] = validation.errorMessage ?? '内容过短';
            break;
          }
          if (validation.maxLength != null &&
              value != null &&
              value.toString().length > validation.maxLength!) {
            errors[field.name] = validation.errorMessage ?? '内容过长';
            break;
          }
        }
      }
    }

    if (errors.isEmpty) {
      emit(
        FormValidState(
          fields: _fields,
          formValues: Map.unmodifiable(_formValues),
        ),
      );
    } else {
      emit(
        FormInvalidState(
          fields: _fields,
          formValues: Map.unmodifiable(_formValues),
          validationErrors: errors,
        ),
      );
    }
  }

  /// 处理表单重置事件
  Future<void> _onFormReset(
    FormResetEvent event,
    Emitter<FormState> emit,
  ) async {
    _formValues = _initializeFormValues(_fields);

    emit(
      FormResetState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
      ),
    );
  }

  /// 处理表单提交事件
  Future<void> _onFormSubmit(
    FormSubmitEvent event,
    Emitter<FormState> emit,
  ) async {
    emit(
      FormLoadingState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
      ),
    );

    try {
      // 验证表单
      final errors = <String, String>{};
      for (final field in _fields) {
        if (!field.visible) continue;
        if (field.required &&
            (_formValues[field.name] == null ||
                _formValues[field.name].toString().isEmpty)) {
          errors[field.name] = '${field.label}不能为空';
        }
      }

      if (errors.isNotEmpty) {
        emit(
          FormInvalidState(
            fields: _fields,
            formValues: Map.unmodifiable(_formValues),
            validationErrors: errors,
          ),
        );
        return;
      }

      // 提交成功
      emit(
        FormSubmittedState(
          fields: _fields,
          formValues: Map.unmodifiable(_formValues),
        ),
      );
    } catch (e) {
      emit(
        FormSubmitFailedState(
          fields: _fields,
          formValues: Map.unmodifiable(_formValues),
          failureReason: e.toString(),
        ),
      );
    }
  }

  /// 处理自定义动作事件
  Future<void> _onFormAction(
    FormActionEvent event,
    Emitter<FormState> emit,
  ) async {
    final handler = actionHandlers[event.actionName];
    if (handler != null) {
      handler(event.payload);
    }

    emit(
      FormUpdatedState(
        fields: _fields,
        formValues: Map.unmodifiable(_formValues),
        validationErrors: const {},
        isValid: true,
        reason: 'action:${event.actionName}',
      ),
    );
  }

  /// 更新字段值（不触发事件，直接更新）
  void updateFieldValue(String fieldName, dynamic value) {
    _formValues[fieldName] = value;
  }

  /// 批量更新字段值
  void updateFieldValues(Map<String, dynamic> values) {
    _formValues.addAll(values);
  }

  /// 获取字段
  FormFieldConfig? getField(String fieldName) {
    try {
      return _fields.firstWhere((f) => f.name == fieldName);
    } catch (e) {
      return null;
    }
  }

  /// 获取字段值
  dynamic getFieldValue(String fieldName) {
    return _formValues[fieldName];
  }
}
