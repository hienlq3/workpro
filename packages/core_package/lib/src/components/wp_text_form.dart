import 'package:flutter/material.dart';

class WpTextForm extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final bool obscureText;
  final String? labelText;

  const WpTextForm({
    super.key,
    this.onChanged,
    this.obscureText = false,
    this.labelText,
  });

  @override
  State<WpTextForm> createState() => _WpTextFormState();
}

class _WpTextFormState extends State<WpTextForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.labelText,
      ),
      obscureText: widget.obscureText,
    );
  }
}
