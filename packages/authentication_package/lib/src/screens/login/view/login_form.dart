import 'package:authentication_package/src/screens/login/bloc/login_bloc.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.kSpace12,
        children: [
          _UsernameInput(),
          _PasswordInput(),
          _LoginButton(formKey: _formKey),
        ],
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.username != current.username ||
          previous.status != current.status,
      builder: (context, state) {
        return WpTextFormField(
          key: const Key('loginForm_usernameInput_textField'),
          onChanged: (username) =>
              context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          labelText: 'Username',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          value: state.username,
          disabled: state.isLoading,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.status != current.status,
      builder: (context, state) {
        return WpTextFormField(
          key: const Key('loginForm_passwordInput_textField'),
          onChanged: (password) =>
              context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          labelText: 'Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          value: state.password,
          disabled: state.isLoading,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const _LoginButton({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return ElevatedButton(
          key: const Key('loginForm_continue_raisedButton'),
          onPressed: state.isLoading
              ? null
              : () {
                  if (formKey.currentState!.validate()) {
                    context.read<LoginBloc>().add(const LoginSubmitted());
                  }
                },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              Size(MediaQuery.of(context).size.width, 48.0),
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(AppRadius.kMediumBorderRadius),
              ),
            ),
            padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>(
              (Set<WidgetState> states) {
                return EdgeInsets.all(16.0);
              },
            ),
          ),
          child: const Text('Login'),
        );
      },
    );
  }
}
