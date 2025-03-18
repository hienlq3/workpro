import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wp_authentication/src/authentication/bloc/authentication_bloc.dart';
import 'package:wp_core/wp_core.dart';
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
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: AppSpacing.kSpace8,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    state.locale?.languageName ?? '',
                    style: textTheme.kTextButton5.copyWith(
                      color: theme.hintColor,
                    ),
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
              onTap: () => _showLanguageSelection(context, state),
            );
          },
        ),
        _LogoutButton(),
      ],
    );
  }

  void _showLanguageSelection(BuildContext context, LocalizationState state) {
    WpModalBottomSheet.showWpModalBottomSheet(
      context: context,
      title: context.appLocalizations.languageSelection,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: state.supportedLocales.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final locale = state.supportedLocales[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.kSpace16,
            ),
            child: ListTile(
              title: Text(
                locale.languageName,
                style: context.textTheme.kTitle6,
              ),
              trailing: Visibility(
                visible: state.locale == locale,
                child: Icon(Icons.check, color: context.theme.primaryColor),
              ),
              onTap: () {
                context.read<LocalizationBloc>().add(
                  LanguageChanged(locale.languageCode),
                );
                context.pop();
              },
              contentPadding: EdgeInsets.zero,
            ),
          );
        },
      ),
    );
  }
}

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => context.read<AuthenticationBloc>().add(
            AuthenticationLogoutPressed(),
          ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFFCEEED)),
      ),
      child: Text(
        context.appLocalizations.more_btn_logout,
        style: context.textTheme.kTextButton2.copyWith(
          color: context.colorScheme.error,
        ),
      ),
    );
  }
}
