import 'package:flutter/material.dart';

abstract class WpBaseFormField<T> extends StatelessWidget {
  final String label;
  final T? value;
  final bool required;
  final ValueChanged<T>? onChanged;

  const WpBaseFormField({
    super.key,
    required this.label,
    this.value,
    required this.required,
    this.onChanged,
  });

  Widget buildField(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.0,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        buildField(context),
      ],
    );
  }
}
