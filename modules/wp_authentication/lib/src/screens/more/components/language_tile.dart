import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wp_authentication/src/config/auth_size.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_localization/wp_localization.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = context.select((LocalizationBloc bloc) => bloc.state.locale);
    final appLocalizations = context.appLocalizations;
    final textTheme = context.textTheme;
    final theme = context.theme;

    return ListTile(
      leading: SvgPicture.asset(
        Assets.kIcLanguagePath,
        semanticsLabel: appLocalizations.languageLabel,
        width: AuthSize.kAuthIconWidth,
        height: AuthSize.kAuthIconHeight,
      ),
      title: Text(appLocalizations.languageLabel, style: textTheme.kTitle6),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            locale?.languageName ?? '',
            style: textTheme.kTextButton5.copyWith(color: theme.hintColor),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
      onTap: () => _showLanguageSelection(context),
    );
  }

  void _showLanguageSelection(BuildContext context) {
    final state = context.read<LocalizationBloc>().state;
    WpModalBottomSheet.showWpModalBottomSheet(
      context: context,
      title: context.appLocalizations.languageSelection,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: state.supportedLocales.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          final locale = state.supportedLocales[index];
          return ListTile(
            title: Text(locale.languageName, style: context.textTheme.kTitle6),
            trailing:
                state.locale == locale
                    ? Icon(Icons.check, color: context.theme.primaryColor)
                    : null,
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
