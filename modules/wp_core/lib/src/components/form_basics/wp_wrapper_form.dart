import 'package:flutter/material.dart';
import 'package:wp_core/src/config/app_radius.dart';
import 'package:wp_core/src/config/app_spacing.dart';
import 'package:wp_core/src/config/app_theme.dart';
import 'package:wp_core/src/utils/extensions/build_context.dart';

class WpBorderWrapper<T> extends StatelessWidget {
  final String? errorText;
  final FormFieldValidator<T>? validator;
  final Widget Function(FormFieldState<T> state) builder;
  final FocusNode focusNode;

  const WpBorderWrapper({
    super.key,
    this.errorText,
    this.validator,
    required this.builder,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return FormField(
      key: key,
      validator: validator,
      builder: (FormFieldState<T> state) {
        final hasError = (state.hasError || (errorText?.isNotEmpty ?? false));
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      hasError
                          ? context.colorScheme.error
                          : focusNode.hasFocus
                          ? context.theme.primaryColor
                          : context.theme.unselectedWidgetColor,
                ),
                borderRadius: BorderRadius.circular(
                  AppRadius.kMediumBorderRadius,
                ),
              ),
              child: builder(state),
            ),
            Visibility(
              visible: hasError,
              child: Padding(
                padding: const EdgeInsets.only(top: AppSpacing.kSpace8),
                child: Text(
                  state.errorText ?? errorText ?? '',
                  style: context.textTheme.kSmallRegular.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
