import 'package:authentication_package/src/login/bloc/login_bloc.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.kSpace12,
        children: [
          _UsernameInput(),
          _PasswordInput(),
          _LoginButton(),
        ],
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WpTextFormField(
      key: const Key('loginForm_usernameInput_textField'),
      onChanged: (username) =>
          context.read<LoginBloc>().add(LoginUsernameChanged(username)),
      labelText: 'Username',
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WpTextFormField(
      key: const Key('loginForm_passwordInput_textField'),
      onChanged: (password) =>
          context.read<LoginBloc>().add(LoginPasswordChanged(password)),
      labelText: 'Password',
    );
  }
}

class _LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('loginForm_continue_raisedButton'),
      onPressed: () => context.read<LoginBloc>().add(const LoginSubmitted()),
      child: const Text('Login'),
    );
  }
}
