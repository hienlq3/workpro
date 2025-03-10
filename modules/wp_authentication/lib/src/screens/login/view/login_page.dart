import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';
import 'package:wp_authentication/src/screens/login/bloc/login_bloc.dart';
import 'package:wp_authentication/src/screens/login/view/login_form.dart';

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
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: const LoginForm(),
          ),
        ),
      ),
    );
  }
}
