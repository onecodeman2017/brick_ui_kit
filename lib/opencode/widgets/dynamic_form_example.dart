import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'form_bloc.dart';
import 'breactive_form.dart';
import 'form_field_type.dart';

class DynamicFormExample extends StatefulWidget {
  const DynamicFormExample({super.key});

  @override
  State<DynamicFormExample> createState() => _DynamicFormExampleState();
}

class _DynamicFormExampleState extends State<DynamicFormExample> {
  late BFormBloc _formBloc;

  @override
  void initState() {
    super.initState();
    _formBloc = BFormBloc();
    _initializeSimpleForm();
  }

  void _initializeSimpleForm() {
    final fields = [
      BFormFieldType.textField(
        name: 'name',
        label: 'Name',
        placeholder: 'Enter your name',
        required: true,
      ),
      BFormFieldType.dropdown(
        name: 'category',
        label: 'Category',
        options: const [
          BOption(value: 'personal', label: 'Personal'),
          BOption(value: 'business', label: 'Business'),
          BOption(value: 'other', label: 'Other'),
        ],
        required: true,
        conditions: [
          BFormFieldCondition.show(
            fieldKey: 'category',
            operator: 'equals',
            value: 'business',
          ),
        ],
      ),
    ];

    _formBloc.add(BFormInitializeEvent(fields: fields));
  }

  void _initializeComplexForm() {
    final fields = [
      BFormFieldType.dropdown(
        name: 'userType',
        label: 'User Type',
        options: const [
          BOption(value: 'individual', label: 'Individual'),
          BOption(value: 'company', label: 'Company'),
          BOption(value: 'government', label: 'Government'),
        ],
        required: true,
      ),
      BFormFieldType.textField(
        name: 'fullName',
        label: 'Full Name',
        placeholder: 'Enter your full name',
        required: true,
        conditions: [
          BFormFieldCondition.show(
            fieldKey: 'userType',
            operator: 'equals',
            value: 'individual',
          ),
        ],
      ),
      BFormFieldType.textField(
        name: 'companyName',
        label: 'Company Name',
        placeholder: 'Enter company name',
        required: true,
        conditions: [
          BFormFieldCondition.show(
            fieldKey: 'userType',
            operator: 'equals',
            value: 'company',
          ),
        ],
      ),
      BFormFieldType.textField(
        name: 'department',
        label: 'Department',
        placeholder: 'Enter department name',
        required: true,
        conditions: [
          BFormFieldCondition.show(
            fieldKey: 'userType',
            operator: 'equals',
            value: 'government',
          ),
        ],
      ),
      BFormFieldType.textField(
        name: 'email',
        label: 'Email',
        placeholder: 'Enter email address',
        required: true,
      ),
      BFormFieldType.textField(
        name: 'customField',
        label: 'Custom Field',
        placeholder: 'This field appears for companies',
        conditions: [
          BFormFieldCondition.show(
            fieldKey: 'userType',
            operator: 'equals',
            value: 'company',
          ),
        ],
      ),
      BFormFieldType.textField(
        name: 'toBeCleared',
        label: 'This field will be cleared',
        placeholder: 'Clears when userType changes',
        initialValue: 'Some initial value',
      ),
      BFormFieldType.textField(
        name: 'disabledField',
        label: 'Disabled Field',
        placeholder: 'Disabled for government users',
        initialValue: 'Cannot edit this',
        conditions: [
          BFormFieldCondition.disable(
            fieldKey: 'userType',
            operator: 'equals',
            value: 'government',
          ),
        ],
      ),
    ];

    _formBloc.add(BFormInitializeEvent(fields: fields));
  }

  void _initializeFieldClearingForm() {
    final fields = [
      BFormFieldType.dropdown(
        name: 'actionType',
        label: 'Action Type',
        options: const [
          BOption(value: 'create', label: 'Create'),
          BOption(value: 'update', label: 'Update'),
          BOption(value: 'delete', label: 'Delete'),
        ],
        required: true,
      ),
      BFormFieldType.textField(
        name: 'targetField',
        label: 'Target Field',
        placeholder: 'This field will be cleared on action change',
        initialValue: 'Some value to clear',
      ),
      BFormFieldType.textField(
        name: 'dependentField',
        label: 'Dependent Field',
        placeholder: 'Cleared when delete is selected',
        initialValue: 'Dependent value',
        conditions: [
          BFormFieldCondition.clear(
            fieldKey: 'actionType',
            operator: 'equals',
            value: 'delete',
          ),
        ],
      ),
    ];

    _formBloc.add(BFormInitializeEvent(fields: fields));
  }

  void _initializeFormReplacementForm() {
    final initialFields = [
      BFormFieldType.dropdown(
        name: 'formType',
        label: 'Form Type',
        options: const [
          BOption(value: 'registration', label: 'Registration Form'),
          BOption(value: 'contact', label: 'Contact Form'),
          BOption(value: 'survey', label: 'Survey Form'),
        ],
        required: true,
      ),
      BFormFieldType.textField(
        name: 'username',
        label: 'Username',
        placeholder: 'Enter username',
        required: true,
      ),
      BFormFieldType.email(
        name: 'email',
        label: 'Email',
        placeholder: 'Enter email',
        required: true,
      ),
    ];

    _formBloc.add(BFormInitializeEvent(fields: initialFields));
  }

  void _replaceFormBasedOnType(String formType) {
    switch (formType) {
      case 'registration':
        final registrationFields = [
          BFormFieldType.dropdown(
            name: 'formType',
            label: 'Form Type',
            options: const [
              BOption(value: 'registration', label: 'Registration Form'),
              BOption(value: 'contact', label: 'Contact Form'),
              BOption(value: 'survey', label: 'Survey Form'),
            ],
            required: true,
          ),
          BFormFieldType.textField(
            name: 'username',
            label: 'Username',
            placeholder: 'Enter username',
            required: true,
          ),
          BFormFieldType.email(
            name: 'email',
            label: 'Email',
            placeholder: 'Enter email',
            required: true,
          ),
          BFormFieldType.password(
            name: 'password',
            label: 'Password',
            placeholder: 'Enter password',
            required: true,
            minLength: 8,
          ),
          BFormFieldType.password(
            name: 'confirmPassword',
            label: 'Confirm Password',
            placeholder: 'Confirm password',
            required: true,
            minLength: 8,
          ),
          BFormFieldType.checkbox(
            name: 'agreeToTerms',
            label: 'I agree to the terms and conditions',
            required: true,
          ),
        ];
        _formBloc.add(BFormUpdateFieldsEvent(fields: registrationFields));
        break;
      case 'contact':
        final contactFields = [
          BFormFieldType.dropdown(
            name: 'formType',
            label: 'Form Type',
            options: const [
              BOption(value: 'registration', label: 'Registration Form'),
              BOption(value: 'contact', label: 'Contact Form'),
              BOption(value: 'survey', label: 'Survey Form'),
            ],
            required: true,
          ),
          BFormFieldType.textField(
            name: 'fullName',
            label: 'Full Name',
            placeholder: 'Enter your full name',
            required: true,
          ),
          BFormFieldType.email(
            name: 'email',
            label: 'Email',
            placeholder: 'Enter email',
            required: true,
          ),
          BFormFieldType.textArea(
            name: 'message',
            label: 'Message',
            placeholder: 'Enter your message',
            required: true,
            maxLines: 5,
          ),
        ];
        _formBloc.add(BFormUpdateFieldsEvent(fields: contactFields));
        break;
      case 'survey':
        final surveyFields = [
          BFormFieldType.dropdown(
            name: 'formType',
            label: 'Form Type',
            options: const [
              BOption(value: 'registration', label: 'Registration Form'),
              BOption(value: 'contact', label: 'Contact Form'),
              BOption(value: 'survey', label: 'Survey Form'),
            ],
            required: true,
          ),
          BFormFieldType.textField(
            name: 'satisfaction',
            label: 'Satisfaction Level',
            placeholder: 'Rate your satisfaction (1-10)',
            required: true,
          ),
          BFormFieldType.radioGroup(
            name: 'recommend',
            label: 'Would you recommend us?',
            options: const [
              BOption(value: 'yes', label: 'Yes'),
              BOption(value: 'no', label: 'No'),
              BOption(value: 'maybe', label: 'Maybe'),
            ],
            required: true,
          ),
          BFormFieldType.textArea(
            name: 'feedback',
            label: 'Additional Feedback',
            placeholder: 'Any additional feedback?',
            maxLines: 3,
          ),
        ];
        _formBloc.add(BFormUpdateFieldsEvent(fields: surveyFields));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Form Examples'),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey[100],
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () => _initializeSimpleForm(),
                    child: const Text('Simple Form'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _initializeComplexForm(),
                    child: const Text('Complex Form'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _initializeFieldClearingForm(),
                    child: const Text('Field Clearing'),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () => _initializeFormReplacementForm(),
                    child: const Text('Form Replacement'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocListener<BFormBloc, BFormState>(
              bloc: _formBloc,
              listener: (context, state) {
                if (state.isDirty) {
final formData = _formBloc.getFormData();
                    final formType = formData['formType'];
                    
                    if (formType != null && formType != _currentFormType) {
                      _currentFormType = formType;
                      _replaceFormBasedOnType(formType!);
                    }

                    final actionType = formData['actionType'];
                    if (actionType != null && actionType != _lastActionType) {
                      _lastActionType = actionType;
                      if (actionType == 'delete') {
                        _formBloc.add(BFormClearFieldEvent(fieldKey: 'dependentField'));
                      }
                      _formBloc.add(BFormClearFieldEvent(fieldKey: 'targetField'));
                    }

                    final userType = formData['userType'];
                    if (userType != null && userType != _lastUserType) {
                      _lastUserType = userType;
                      _formBloc.add(BFormClearFieldEvent(fieldKey: 'toBeCleared'));
                    }
                }
              },
              child: BReactiveForm(
                bloc: _formBloc,
                fieldBuilder: (context, field) {
                  return BFormTextField(
                    field: field,
                    errorText: _formBloc.state.errors[field.name],
                    onChanged: (value) {
                      _formBloc.add(BFormFieldValueChangedEvent(
                        fieldKey: field.name,
                        value: value,
                      ));
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _formBloc.add(BFormResetEvent());
                  },
                  child: const Text('Reset Form'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _formBloc.add(BFormValidateEvent());
                  },
                  child: const Text('Validate Form'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final formData = _formBloc.getFormData();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Form Data: ${formData.toString()}'),
                        duration: const Duration(seconds: 3),
                      ),
                    );
                  },
                  child: const Text('Show Form Data'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? _currentFormType;
  String? _lastActionType;
  String? _lastUserType;
}