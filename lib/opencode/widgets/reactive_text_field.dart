import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:reactive_forms/reactive_forms.dart';

/// Custom Reactive TextField Widget using ForUI
class BReactiveTextField extends ReactiveTextField<String, String> {
  BReactiveTextField({
    super.key,
    required super.formControlName,
    String? label,
    String? hint,
    String? placeholder,
    int? maxLength,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? suffixIcon,
    String? helperText,
    bool showErrors = true,
    ValueChanged<String>? onChanged,
    VoidCallback? onTap,
    bool enabled = true,
    FocusNode? focusNode,
  }) : super(
          builder: (field) {
            final effectiveFocusNode = focusNode ?? FocusNode();
            final errorText = field.control.hasError && showErrors
                ? field.control.errors.entries.map((e) => e.value.toString()).join(', ')
                : null;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (label != null) ...[
                  Text(
                    label!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                FTextField(
                  controller: TextEditingController.fromValue(
                    TextEditingValue(
                      text: field.control.value ?? '',
                      selection: TextSelection.collapsed(
                        offset: field.control.value?.length ?? 0,
                      ),
                    ),
                  ),
                  hint: hint ?? placeholder,
                  maxLength: maxLength,
                  keyboardType: keyboardType,
                  obscureText: obscureText,
                  enabled: enabled,
                  focusNode: effectiveFocusNode,
                  onChange: (value) {
                    if (field.control.enabled) {
                      field.control.value = value;
                      onChanged?.call(value);
                    }
                  },
                  onTap: onTap,
                ),
                if (helperText != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    helperText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(field.context).colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
                if (errorText != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    errorText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                ],
              ],
            );
          },
        );
}

/// Custom Reactive Email Field Widget
class BReactiveEmailField extends BReactiveTextField {
  BReactiveEmailField({
    super.key,
    required super.formControlName,
    String? label,
    String? hint,
    String? placeholder,
    String? helperText,
    bool showErrors = true,
    ValueChanged<String>? onChanged,
    VoidCallback? onTap,
    bool enabled = true,
    FocusNode? focusNode,
  }) : super(
          label: label ?? 'Email',
          hint: hint ?? placeholder ?? 'Enter email',
          keyboardType: TextInputType.emailAddress,
          helperText: helperText,
          showErrors: showErrors,
          onChanged: onChanged,
          onTap: onTap,
          enabled: enabled,
          focusNode: focusNode,
        );
}

/// Custom Reactive Password Field Widget
class BReactivePasswordField extends StatefulWidget {
  final String formControlName;
  final String? label;
  final String? hint;
  final String? placeholder;
  final String? helperText;
  final bool showErrors;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool enabled;
  final FocusNode? focusNode;

  const BReactivePasswordField({
    super.key,
    required this.formControlName,
    this.label,
    this.hint,
    this.placeholder,
    this.helperText,
    this.showErrors = true,
    this.onChanged,
    this.onTap,
    this.enabled = true,
    this.focusNode,
  });

  @override
  State<BReactivePasswordField> createState() => _BReactivePasswordFieldState();
}

class _BReactivePasswordFieldState extends State<BReactivePasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<String>(
      formControlName: widget.formControlName,
      builder: (field) {
        final effectiveFocusNode = widget.focusNode ?? FocusNode();
        final errorText = field.control.hasError && widget.showErrors
            ? field.control.errors.entries.map((e) => e.value.toString()).join(', ')
            : null;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.label != null) ...[
              Text(
                widget.label!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
            ],
            FTextField(
              controller: TextEditingController.fromValue(
                TextEditingValue(
                  text: field.control.value ?? '',
                  selection: TextSelection.collapsed(
                    offset: field.control.value?.length ?? 0,
                  ),
                ),
              ),
              hint: widget.hint ?? widget.placeholder ?? 'Enter password',
              obscureText: _obscureText,
              enabled: widget.enabled,
              focusNode: effectiveFocusNode,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
              onChange: (value) {
                if (field.control.enabled) {
                  field.control.value = value;
                  widget.onChanged?.call(value);
                }
              },
              onTap: widget.onTap,
            ),
            if (widget.helperText != null) ...[
              const SizedBox(height: 4),
              Text(
                widget.helperText!,
                style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ),
            ],
            if (errorText != null) ...[
              const SizedBox(height: 4),
              Text(
                errorText,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.red,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

/// Custom Reactive TextArea Widget
class BReactiveTextArea extends ReactiveTextField<String, String> {
  BReactiveTextArea({
    super.key,
    required super.formControlName,
    String? label,
    String? hint,
    String? placeholder,
    int? maxLines,
    int? maxLength,
    String? helperText,
    bool showErrors = true,
    ValueChanged<String>? onChanged,
    VoidCallback? onTap,
    bool enabled = true,
    FocusNode? focusNode,
  }) : super(
          builder: (field) {
            final effectiveFocusNode = focusNode ?? FocusNode();
            final errorText = field.control.hasError && showErrors
                ? field.control.errors.entries.map((e) => e.value.toString()).join(', ')
                : null;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (label != null) ...[
                  Text(
                    label!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                FTextField.multiline(
                  controller: TextEditingController.fromValue(
                    TextEditingValue(
                      text: field.control.value ?? '',
                      selection: TextSelection.collapsed(
                        offset: field.control.value?.length ?? 0,
                      ),
                    ),
                  ),
                  hint: hint ?? placeholder,
                  maxLines: maxLines ?? 3,
                  maxLength: maxLength,
                  enabled: enabled,
                  focusNode: effectiveFocusNode,
                  onChange: (value) {
                    if (field.control.enabled) {
                      field.control.value = value;
                      onChanged?.call(value);
                    }
                  },
                  onTap: onTap,
                ),
                if (helperText != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    helperText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(field.context).colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                ],
                if (errorText != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    errorText,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.red,
                    ),
                  ),
                ],
              ],
            );
          },
        );
}