import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/config/auth_color.dart';
import 'package:wp_authentication/wp_authentication.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_localization/wp_localization.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:
          () => context.read<AuthenticationBloc>().add(
            AuthenticationLogoutPressed(),
          ),
      style: ElevatedButton.styleFrom(
        backgroundColor: AuthColor.kLogoutBackgroundBtnColor,
      ),
      child: Text(
        context.appLocalizations.more_btn_logout,
        style: context.textTheme.kTextButton2.copyWith(
          color: AuthColor.kLogoutTextBtnColor,
        ),
      ),
    );
  }
}
