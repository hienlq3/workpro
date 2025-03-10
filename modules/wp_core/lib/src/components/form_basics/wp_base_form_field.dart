import 'package:flutter/material.dart';
import 'package:wp_core/src/config/app_theme.dart';
import 'package:wp_core/src/utils/extension/build_context.dart';

abstract class WpBaseFormField<T> extends StatefulWidget {
  final String labelText;
  final String? Function(String?)? validator;
  final ValueChanged<T> onChanged;
  final String? errorText;
  final T? value;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final bool disabled;

  const WpBaseFormField({
    super.key,
    required this.labelText,
    this.validator,
    required this.onChanged,
    this.errorText,
    this.value,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.disabled = false,
  });
}

abstract class WpBaseFormFieldState<T extends WpBaseFormField>
    extends State<T> {
  InputDecoration getInputDecoration() {
    return InputDecoration(
      border: InputBorder.none,
      labelText: 'Nhập ${widget.labelText}',
      labelStyle: context.textTheme.kLabel2,
      contentPadding: const EdgeInsets.all(16.0),
      counterText: '',
    );
  }
}
