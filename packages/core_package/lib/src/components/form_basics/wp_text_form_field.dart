import 'package:core_package/src/components/form_basics/wp_base_form_field.dart';
import 'package:flutter/material.dart';

class WpTextFormField extends WpBaseFormField<String> {
  final int maxLength;

  const WpTextFormField({
    super.key,
    required super.label,
    super.value,
    super.required = false,
    super.onChanged,
    this.maxLength = 255,
  });

  @override
  Widget buildField(BuildContext context) {
    return TextFormField(
      initialValue: value,
      maxLength: maxLength,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "Nhập $label",
      ),
      onChanged: onChanged,
    );
  }
}
