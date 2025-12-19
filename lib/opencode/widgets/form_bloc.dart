import 'package:flutter_bloc/flutter_bloc.dart';
import 'form_field_type.dart';

abstract class BFormEvent {
  const BFormEvent();
}

class BFormInitializeEvent extends BFormEvent {
  final List<BFormFieldType> fields;

  const BFormInitializeEvent({required this.fields});
}

class BFormUpdateFieldsEvent extends BFormEvent {
  final List<BFormFieldType> fields;

  const BFormUpdateFieldsEvent({required this.fields});
}

class BFormFieldValueChangedEvent extends BFormEvent {
  final String fieldKey;
  final dynamic value;

  const BFormFieldValueChangedEvent({required this.fieldKey, required this.value});
}

class BFormActionEvent extends BFormEvent {
  final BFormAction action;

  const BFormActionEvent({required this.action});
}

class BFormValidateEvent extends BFormEvent {
  const BFormValidateEvent();
}

class BFormValidateFieldEvent extends BFormEvent {
  final String fieldKey;

  const BFormValidateFieldEvent({required this.fieldKey});
}

class BFormResetEvent extends BFormEvent {
  const BFormResetEvent();
}

class BFormSetFieldValueEvent extends BFormEvent {
  final String fieldKey;
  final dynamic value;

  const BFormSetFieldValueEvent({required this.fieldKey, required this.value});
}

class BFormClearFieldEvent extends BFormEvent {
  final String fieldKey;

  const BFormClearFieldEvent({required this.fieldKey});
}

class BFormEnableFieldEvent extends BFormEvent {
  final String fieldKey;

  const BFormEnableFieldEvent({required this.fieldKey});
}

class BFormDisableFieldEvent extends BFormEvent {
  final String fieldKey;

  const BFormDisableFieldEvent({required this.fieldKey});
}

class BFormSetRequiredEvent extends BFormEvent {
  final String fieldKey;
  final bool required;

  const BFormSetRequiredEvent({required this.fieldKey, required this.required});
}

class BFormSetOptionalEvent extends BFormEvent {
  final String fieldKey;

  const BFormSetOptionalEvent({required this.fieldKey});
}

class BFormState {
  final List<BFormFieldType> fields;
  final bool isSubmitting;
  final Map<String, String> errors;
  final bool isValid;
  final bool isDirty;

  const BFormState({
    required this.fields,
    this.isSubmitting = false,
    this.errors = const {},
    this.isValid = false,
    this.isDirty = false,
  });

  BFormState copyWith({
    List<BFormFieldType>? fields,
    bool? isSubmitting,
    Map<String, String>? errors,
    bool? isValid,
    bool? isDirty,
  }) {
    return BFormState(
      fields: fields ?? this.fields,
      isSubmitting: isSubmitting ?? this.isSubmitting,
      errors: errors ?? this.errors,
      isValid: isValid ?? this.isValid,
      isDirty: isDirty ?? this.isDirty,
    );
  }
}

class BFormBloc extends Bloc<BFormEvent, BFormState> {
  BFormBloc() : super(const BFormState(fields: [])) {
    on<BFormInitializeEvent>(_onInitialize);
    on<BFormUpdateFieldsEvent>(_onUpdateFields);
    on<BFormFieldValueChangedEvent>(_onFieldValueChanged);
    on<BFormActionEvent>(_onAction);
    on<BFormValidateEvent>(_onValidate);
    on<BFormValidateFieldEvent>(_onValidateField);
    on<BFormResetEvent>(_onReset);
    on<BFormSetFieldValueEvent>(_onSetFieldValue);
    on<BFormClearFieldEvent>(_onClearField);
    on<BFormEnableFieldEvent>(_onEnableField);
    on<BFormDisableFieldEvent>(_onDisableField);
    on<BFormSetRequiredEvent>(_onSetRequired);
    on<BFormSetOptionalEvent>(_onSetOptional);
  }

  void _onInitialize(BFormInitializeEvent event, Emitter<BFormState> emit) {
    emit(state.copyWith(fields: event.fields));
  }

  void _onUpdateFields(BFormUpdateFieldsEvent event, Emitter<BFormState> emit) {
    emit(state.copyWith(fields: event.fields));
  }

  void _onFieldValueChanged(BFormFieldValueChangedEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldValue(state.fields, event.fieldKey, event.value);
    final processedFields = _processConditions(updatedFields, event.fieldKey);
    
    emit(state.copyWith(
      fields: processedFields,
      isDirty: true,
    ));
    
    _validateForm(processedFields);
  }

  void _onAction(BFormActionEvent event, Emitter<BFormState> emit) {
    final processedFields = _executeAction(state.fields, event.action);
    emit(state.copyWith(fields: processedFields));
  }

  void _onValidate(BFormValidateEvent event, Emitter<BFormState> emit) {
    _validateForm(state.fields);
  }

  void _onValidateField(BFormValidateFieldEvent event, Emitter<BFormState> emit) {
    _validateField(state.fields, event.fieldKey);
  }

  void _onReset(BFormResetEvent event, Emitter<BFormState> emit) {
    final resetFields = state.fields.map((field) {
      return field.copyWithInitialValue(field.initialValue);
    }).toList();
    
    emit(state.copyWith(
      fields: resetFields,
      errors: {},
      isValid: false,
      isDirty: false,
    ));
  }

  void _onSetFieldValue(BFormSetFieldValueEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldValue(state.fields, event.fieldKey, event.value);
    emit(state.copyWith(fields: updatedFields));
  }

  void _onClearField(BFormClearFieldEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldValue(state.fields, event.fieldKey, null);
    emit(state.copyWith(fields: updatedFields));
  }

  void _onEnableField(BFormEnableFieldEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldEnabled(state.fields, event.fieldKey, true);
    emit(state.copyWith(fields: updatedFields));
  }

  void _onDisableField(BFormDisableFieldEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldEnabled(state.fields, event.fieldKey, false);
    emit(state.copyWith(fields: updatedFields));
  }

  void _onSetRequired(BFormSetRequiredEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldRequired(state.fields, event.fieldKey, true);
    emit(state.copyWith(fields: updatedFields));
  }

  void _onSetOptional(BFormSetOptionalEvent event, Emitter<BFormState> emit) {
    final updatedFields = _updateFieldRequired(state.fields, event.fieldKey, false);
    emit(state.copyWith(fields: updatedFields));
  }

  List<BFormFieldType> _updateFieldValue(List<BFormFieldType> fields, String fieldKey, dynamic value) {
    return fields.map((field) {
      if (field.name == fieldKey) {
        return field.copyWithInitialValue(value);
      }
      return field;
    }).toList();
  }

  List<BFormFieldType> _updateFieldEnabled(List<BFormFieldType> fields, String fieldKey, bool enabled) {
    return fields.map((field) {
      if (field.name == fieldKey) {
        return field.copyWithEnabled(enabled);
      }
      return field;
    }).toList();
  }

  List<BFormFieldType> _updateFieldRequired(List<BFormFieldType> fields, String fieldKey, bool required) {
    return fields.map((field) {
      if (field.name == fieldKey) {
        return field.copyWithRequired(required);
      }
      return field;
    }).toList();
  }

  List<BFormFieldType> _processConditions(List<BFormFieldType> fields, String changedFieldKey) {
    final changedField = fields.firstWhere((field) => field.name == changedFieldKey);
    final changedValue = changedField.initialValue;

    List<BFormFieldType> processedFields = List.from(fields);

    for (final field in fields) {
      if (field.conditions != null) {
        bool shouldEnable = field.enabled;
        bool isRequired = field.required;

        for (final condition in field.conditions!) {
          if (_evaluateCondition(condition, changedFieldKey, changedValue)) {
            _processSingleCondition(condition, field, (newEnabled, newRequired) {
              shouldEnable = newEnabled ?? shouldEnable;
              isRequired = newRequired ?? isRequired;
            });
          }
        }

        final fieldIndex = processedFields.indexWhere((f) => f.name == field.name);
        if (fieldIndex != -1) {
          processedFields[fieldIndex] = processedFields[fieldIndex].copyWithEnabled(shouldEnable);
          if (isRequired != field.required) {
            processedFields[fieldIndex] = processedFields[fieldIndex].copyWithRequired(isRequired);
          }
        }
      }
    }

    return processedFields;
  }

  void _processSingleCondition(BFormFieldCondition condition, BFormFieldType field, Function(bool?, bool?) updateState) {
    condition.when(
      BShowCondition: (fieldKey, operator, value) => updateState(true, null),
      BHideCondition: (fieldKey, operator, value) => updateState(false, null),
      BEnableCondition: (fieldKey, operator, value) => updateState(true, null),
      BDisableCondition: (fieldKey, operator, value) => updateState(false, null),
      BRequiredCondition: (fieldKey, operator, value) => updateState(null, true),
      BClearCondition: (fieldKey, operator, value) => updateState(null, null),
      BSetValueCondition: (fieldKey, operator, value, newValue) => updateState(null, null),
      BReplaceFormCondition: (fieldKey, operator, value, newFormFields) => updateState(null, null),
    );
  }

  bool _evaluateCondition(BFormFieldCondition condition, String changedFieldKey, dynamic changedValue) {
    return condition.when(
      BShowCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BHideCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BEnableCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BDisableCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BRequiredCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BClearCondition: (fieldKey, operator, value) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BSetValueCondition: (fieldKey, operator, value, newValue) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
      BReplaceFormCondition: (fieldKey, operator, value, newFormFields) => 
        fieldKey == changedFieldKey && _evaluateOperator(operator, changedValue, value),
    );
  }

  bool _evaluateOperator(String operator, dynamic actualValue, dynamic expectedValue) {
    switch (operator) {
      case 'equals':
        return actualValue == expectedValue;
      case 'notEquals':
        return actualValue != expectedValue;
      case 'contains':
        return actualValue?.toString().contains(expectedValue.toString()) ?? false;
      case 'notContains':
        return !(actualValue?.toString().contains(expectedValue.toString()) ?? true);
      case 'greaterThan':
        if (actualValue is num && expectedValue is num) {
          return actualValue > expectedValue;
        }
        return false;
      case 'lessThan':
        if (actualValue is num && expectedValue is num) {
          return actualValue < expectedValue;
        }
        return false;
      case 'greaterThanOrEqual':
        if (actualValue is num && expectedValue is num) {
          return actualValue >= expectedValue;
        }
        return false;
      case 'lessThanOrEqual':
        if (actualValue is num && expectedValue is num) {
          return actualValue <= expectedValue;
        }
        return false;
      case 'isEmpty':
        return actualValue == null || actualValue.toString().isEmpty;
      case 'isNotEmpty':
        return actualValue != null && actualValue.toString().isNotEmpty;
      case 'isNull':
        return actualValue == null;
      case 'isNotNull':
        return actualValue != null;
      default:
        return false;
    }
  }

  List<BFormFieldType> _executeAction(List<BFormFieldType> fields, BFormAction action) {
    return action.when(
      BUpdateFieldsAction: (newFields) => newFields,
      BClearFieldAction: (fieldKey) => _updateFieldValue(fields, fieldKey, null),
      BEnableFieldAction: (fieldKey) => _updateFieldEnabled(fields, fieldKey, true),
      BDisableFieldAction: (fieldKey) => _updateFieldEnabled(fields, fieldKey, false),
      BShowFieldAction: (fieldKey) => _updateFieldEnabled(fields, fieldKey, true),
      BHideFieldAction: (fieldKey) => _updateFieldEnabled(fields, fieldKey, false),
      BSetRequiredAction: (fieldKey) => _updateFieldRequired(fields, fieldKey, true),
      BSetOptionalAction: (fieldKey) => _updateFieldRequired(fields, fieldKey, false),
      BReplaceFormAction: (newFields) => newFields,
      BValidateFieldAction: (fieldKey) => fields,
      BValidateFormAction: () => fields,
      BResetFormAction: () => fields.map((field) => field.copyWithInitialValue(field.initialValue)).toList(),
    );
  }

  void _validateForm(List<BFormFieldType> fields) {
    final errors = <String, String>{};
    bool isValid = true;

    for (final field in fields) {
      if (field.required && (field.initialValue == null || field.initialValue.toString().isEmpty)) {
        errors[field.name] = '${field.label} is required';
        isValid = false;
      }
    }

    emit(state.copyWith(
      errors: errors,
      isValid: isValid,
    ));
  }

  void _validateField(List<BFormFieldType> fields, String fieldKey) {
    final field = fields.firstWhere((f) => f.name == fieldKey);
    String? error;

    if (field.required && (field.initialValue == null || field.initialValue.toString().isEmpty)) {
      error = '${field.label} is required';
    }

    final updatedErrors = Map<String, String>.from(state.errors);
    if (error != null) {
      updatedErrors[fieldKey] = error;
    } else {
      updatedErrors.remove(fieldKey);
    }

    emit(state.copyWith(errors: updatedErrors));
  }

  Map<String, dynamic> getFormData() {
    final formData = <String, dynamic>{};
    for (final field in state.fields) {
      formData[field.name] = field.initialValue;
    }
    return formData;
  }

  bool isFormValid() {
    return state.isValid && state.errors.isEmpty;
  }
}