import 'package:core_package/src/config/app_radius.dart';
import 'package:core_package/src/config/app_spacing.dart';
import 'package:core_package/src/config/app_theme.dart';
import 'package:core_package/src/utils/extension/build_context.dart';
import 'package:flutter/material.dart';

class WpBorderWrapper<T> extends StatelessWidget {
  final String? errorText;
  final FormFieldValidator<T>? validator;
  final Widget Function(FormFieldState<T> state) builder;

  const WpBorderWrapper({
    super.key,
    this.errorText,
    this.validator,
    required this.builder,
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
                  color: hasError
                      ? context.colorScheme.error
                      : context.colorScheme.primary,
                ),
                borderRadius:
                    BorderRadius.circular(AppRadius.kMediumBorderRadius),
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
