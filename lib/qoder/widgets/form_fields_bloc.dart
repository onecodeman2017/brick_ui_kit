import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'form_field_type.dart';

/// FormFields 事件
abstract class FormFieldsEvent extends Equatable {
  const FormFieldsEvent();

  @override
  List<Object?> get props => [];
}

/// 设置表单字段
class SetFormFieldsEvent extends FormFieldsEvent {
  final List<FormFieldConfig> fields;

  const SetFormFieldsEvent(this.fields);

  @override
  List<Object?> get props => [fields];
}

/// 更新单个字段
class UpdateFormFieldEvent extends FormFieldsEvent {
  final String fieldName;
  final FormFieldConfig field;

  const UpdateFormFieldEvent(this.fieldName, this.field);

  @override
  List<Object?> get props => [fieldName, field];
}

/// 添加字段
class AddFormFieldEvent extends FormFieldsEvent {
  final FormFieldConfig field;

  const AddFormFieldEvent(this.field);

  @override
  List<Object?> get props => [field];
}

/// 删除字段
class RemoveFormFieldEvent extends FormFieldsEvent {
  final String fieldName;

  const RemoveFormFieldEvent(this.fieldName);

  @override
  List<Object?> get props => [fieldName];
}

/// FormFields 状态
class FormFieldsState extends Equatable {
  final List<FormFieldConfig> fields;

  const FormFieldsState({this.fields = const []});

  FormFieldsState copyWith({List<FormFieldConfig>? fields}) {
    return FormFieldsState(
      fields: fields ?? this.fields,
    );
  }

  @override
  List<Object?> get props => [fields];
}

/// FormFields Bloc
class FormFieldsBloc extends Bloc<FormFieldsEvent, FormFieldsState> {
  FormFieldsBloc() : super(const FormFieldsState()) {
    on<SetFormFieldsEvent>(_onSetFormFields);
    on<UpdateFormFieldEvent>(_onUpdateFormField);
    on<AddFormFieldEvent>(_onAddFormField);
    on<RemoveFormFieldEvent>(_onRemoveFormField);
  }

  void _onSetFormFields(
    SetFormFieldsEvent event,
    Emitter<FormFieldsState> emit,
  ) {
    emit(state.copyWith(fields: event.fields));
  }

  void _onUpdateFormField(
    UpdateFormFieldEvent event,
    Emitter<FormFieldsState> emit,
  ) {
    final updatedFields = state.fields.map((field) {
      if (field.name == event.fieldName) {
        return event.field;
      }
      return field;
    }).toList();
    emit(state.copyWith(fields: updatedFields));
  }

  void _onAddFormField(
    AddFormFieldEvent event,
    Emitter<FormFieldsState> emit,
  ) {
    final updatedFields = [...state.fields, event.field];
    emit(state.copyWith(fields: updatedFields));
  }

  void _onRemoveFormField(
    RemoveFormFieldEvent event,
    Emitter<FormFieldsState> emit,
  ) {
    final updatedFields =
        state.fields.where((field) => field.name != event.fieldName).toList();
    emit(state.copyWith(fields: updatedFields));
  }
}
