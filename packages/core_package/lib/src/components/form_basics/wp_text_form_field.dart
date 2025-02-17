import 'package:core_package/src/components/form_basics/wp_base_form_field.dart';
import 'package:flutter/material.dart';

class WpTextFormField extends WpBaseFormField<String> {
  final int maxLength;
  final String labelText;

  const WpTextFormField({
    super.key,
    required this.labelText,
    super.value,
    super.required = false,
    super.onChanged,
    this.maxLength = 255,
    super.validator,
    super.errorText,
  });

  @override
  Widget buildField(BuildContext context, FormFieldState<String> state) {
    return TextFormField(
      maxLength: maxLength,
      initialValue: value,
      decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Nhập $labelText',
        contentPadding: const EdgeInsets.all(16.0),
        counterText: '',
      ),
      textCapitalization: TextCapitalization.sentences,
      autocorrect: false,
      onChanged: (newValue) {
        state.didChange(newValue);
        onChanged?.call(newValue);
      },
    );
  }
}
