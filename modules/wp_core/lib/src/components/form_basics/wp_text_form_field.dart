import 'package:flutter/material.dart';
import 'package:wp_core/src/components/form_basics/wp_base_form_field.dart';
import 'package:wp_core/src/components/form_basics/wp_wrapper_form.dart';
import 'package:wp_core/src/config/app_theme.dart';
import 'package:wp_core/src/utils/extension/build_context.dart';

class WpTextFormField<String> extends WpBaseFormField {
  const WpTextFormField({
    super.key,
    super.validator,
    required super.onChanged,
    required super.labelText,
    super.errorText,
    super.value,
    super.textInputAction,
    super.textCapitalization,
    super.disabled,
  });

  @override
  State<WpTextFormField> createState() => _WpTextFormFieldState();
}

class _WpTextFormFieldState extends WpBaseFormFieldState<WpTextFormField> {
  final FocusNode _focusNode = FocusNode();
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
    _focusNode.addListener(() {
      setState(() {
        if (!_focusNode.hasFocus && _controller.text != widget.value) {
          widget.onChanged(_controller.text);
        }
      });
    });
  }

  @override
  void didUpdateWidget(covariant WpTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _controller.text = widget.value;
      });
    }
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WpBorderWrapper<String>(
      validator: widget.validator,
      errorText: widget.errorText,
      builder: (state) {
        return TextFormField(
          focusNode: _focusNode,
          controller: _controller,
          decoration: getInputDecoration(
            controller: _controller,
            onPressed: () {
              _controller.clear();
              widget.onChanged(_controller.text);
              state.didChange(_controller.text);
            },
          ),
          onChanged: state.didChange,
          onTapOutside: (event) => _focusNode.unfocus(),
          textCapitalization: widget.textCapitalization,
          textInputAction: widget.textInputAction,
          enabled: !widget.disabled,
          readOnly: widget.disabled,
          style: context.textTheme.kBody1,
        );
      },
    );
  }
}
