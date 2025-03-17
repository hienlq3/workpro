import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wp_core/core_package.dart';
import 'package:wp_localization/wp_localization.dart';

class MoreForm extends StatelessWidget {
  const MoreForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<LocalizationBloc, LocalizationState>(
          buildWhen: (previous, current) => previous.locale != current.locale,
          builder: (context, state) {
            final appLocalizations = context.appLocalizations;
            final textTheme = context.textTheme;
            final theme = context.theme;

            return ListTile(
              leading: SvgPicture.asset(
                Assets.kIcLanguagePath,
                semanticsLabel: appLocalizations.languageLabel,
                width: 32.0,
                height: 32.0,
              ),
              title: Text(
                appLocalizations.languageLabel,
                style: textTheme.kTitle6,
              ),
              trailing: Text(
                state.locale?.languageName ?? '',
                style: textTheme.kTextButton5.copyWith(color: theme.hintColor),
              ),
              onTap: () => _showLanguageSelection(context, state),
            );
          },
        ),
      ],
    );
  }

  void _showLanguageSelection(BuildContext context, LocalizationState state) {
    showModalBottomSheet(
      context: context,
      builder:
          (context) => ListView.separated(
            itemCount: state.supportedLocales.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final locale = state.supportedLocales[index];
              return ListTile(
                title: Text(
                  locale.languageName,
                  style: context.textTheme.kTitle6,
                ),
                onTap: () {
                  context.read<LocalizationBloc>().add(
                    LanguageChanged(locale.languageCode),
                  );
                  context.pop();
                },
              );
            },
          ),
    );
  }
}
