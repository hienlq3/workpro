import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';
import 'package:wp_authentication/src/screens/login/bloc/login_bloc.dart';
import 'package:wp_authentication/src/screens/login/view/login_form.dart';
import 'package:wp_core/wp_core.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => LoginBloc(
            authenticationRepository: context.read<AuthenticationRepository>(),
          ),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: BackButton(
                color: Colors.black,
                onPressed:
                    () => context.read<LoginBloc>().add(
                      const LogoutCodeSubmitted(),
                    ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: context.mediaQuery.size.height / 7,
                    left: AppSpacing.kSpace16,
                    right: AppSpacing.kSpace16,
                  ),
                  child: const LoginForm(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
