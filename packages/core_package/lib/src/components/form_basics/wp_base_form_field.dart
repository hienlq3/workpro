import 'package:core_package/src/config/config.dart';
import 'package:core_package/src/utils/extension/build_context.dart';
import 'package:flutter/material.dart';

abstract class WpBaseFormField<T> extends StatelessWidget {
  final T? value;
  final bool required;
  final ValueChanged<T>? onChanged;
  final FormFieldValidator<T>? validator;
  final String? errorText;

  const WpBaseFormField({
    super.key,
    this.value,
    this.required = false,
    this.onChanged,
    this.validator,
    this.errorText,
  });

  Widget buildField(BuildContext context, FormFieldState<T> state);

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      key: key,
      validator: validator,
      builder: (state) {
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
              child: buildField(context, state),
            ),
            if (hasError)
              Padding(
                padding: const EdgeInsets.only(top: AppSpacing.kSpace8),
                child: Text(
                  state.errorText ?? errorText ?? '',
                  style: context.textTheme.kSmallRegular.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
