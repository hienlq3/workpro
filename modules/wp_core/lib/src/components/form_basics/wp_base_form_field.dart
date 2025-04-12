import 'package:flutter/material.dart';
import 'package:wp_core/src/config/app_theme.dart';
import 'package:wp_core/src/utils/extensions/build_context.dart';

abstract class WpBaseFormField<T> extends StatefulWidget {
  const WpBaseFormField({
    required this.labelText,
    required this.onChanged,
    super.key,
    this.validator,
    this.errorText,
    required this.value,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.disabled = false,
    this.suffixIcon,
    this.obscureText = false,
  });
  final String labelText;
  final String? Function(String?)? validator;
  final ValueChanged<T> onChanged;
  final String? errorText;
  final T value;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final bool disabled;
  final Widget? suffixIcon;
  final bool obscureText;
}

abstract class WpBaseFormFieldState<T> extends State<WpBaseFormField<T>> {
  InputDecoration getInputDecoration({
    required TextEditingController controller,
    required FocusNode focusNode,
    required void Function()? onPressed,
  }) {
    return InputDecoration(
      border: InputBorder.none,
      labelText: widget.labelText,
      labelStyle: context.textTheme.kLabel2.copyWith(
        color: focusNode.hasFocus ? context.theme.primaryColor : null,
      ),
      contentPadding: const EdgeInsets.all(16),
      counterText: '',
      suffixIcon:
          widget.suffixIcon != null
              ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Visibility(
                    visible: controller.text.isNotEmpty,
                    child: IconButton(
                      icon: const Icon(Icons.cancel, size: 24),
                      onPressed: onPressed,
                      color: context.theme.unselectedWidgetColor,
                    ),
                  ),
                  widget.suffixIcon!,
                ],
              )
              : Visibility(
                visible: controller.text.isNotEmpty,
                child: IconButton(
                  icon: const Icon(Icons.cancel, size: 24),
                  color: context.theme.unselectedWidgetColor,
                  onPressed: onPressed,
                ),
              ),
    );
  }
}
