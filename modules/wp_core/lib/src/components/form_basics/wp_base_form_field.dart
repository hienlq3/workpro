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
  final Widget? suffixIcon;

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
    this.suffixIcon,
  });
}

abstract class WpBaseFormFieldState<T extends WpBaseFormField>
    extends State<T> {
  InputDecoration getInputDecoration({
    required TextEditingController controller,
    required void Function()? onPressed,
  }) {
    return InputDecoration(
      border: InputBorder.none,
      labelText: widget.labelText,
      labelStyle: context.textTheme.kLabel2,
      contentPadding: const EdgeInsets.all(16.0),
      counterText: '',
      suffixIcon:
          widget.suffixIcon != null
              ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: controller.text.isNotEmpty,
                    child: IconButton(
                      icon: const Icon(Icons.cancel, size: 24.0),
                      onPressed: onPressed,
                    ),
                  ),
                  widget.suffixIcon!,
                ],
              )
              : Visibility(
                visible: controller.text.isNotEmpty,
                child: IconButton(
                  icon: const Icon(Icons.cancel, size: 24.0),
                  onPressed: onPressed,
                ),
              ),
    );
  }
}
