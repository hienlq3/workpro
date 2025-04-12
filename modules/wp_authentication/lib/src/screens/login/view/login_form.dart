import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/screens/login/bloc/login_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_localization/wp_localization.dart';

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
        spacing: AppSpacing.kSpace16,
        children: [
          Text(
            context.appLocalizations.loginTitle,
            style: context.textTheme.kTitle2,
          ),
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
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return WpTextFormField(
          onChanged:
              (username) =>
                  context.read<LoginBloc>().add(LoginUsernameChanged(username)),
          labelText: context.appLocalizations.usernameLabel,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.appLocalizations.requiredValidation;
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

class _PasswordInput extends StatefulWidget {
  @override
  State<_PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool _obscureText = true;

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen:
          (previous, current) =>
              previous.password != current.password ||
              previous.status != current.status,
      builder: (context, state) {
        return WpTextFormField(
          onChanged:
              (password) =>
                  context.read<LoginBloc>().add(LoginPasswordChanged(password)),
          labelText: context.appLocalizations.passwordLabel,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.appLocalizations.requiredValidation;
            }
            return null;
          },
          value: state.password,
          disabled: state.isLoading,
          obscureText: _obscureText,
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
            color: context.theme.unselectedWidgetColor,
            onPressed: _toggleObscureText,
          ),
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => current.isError,
      listener: (context, state) {
        context.scaffoldMessenger.showSnackBar(
          SnackBar(content: Text(state.errorText)),
        );
      },
      builder: (context, state) {
        return ElevatedButton(
          onPressed:
              state.isLoading
                  ? null
                  : () {
                    if (formKey.currentState!.validate()) {
                      context.read<LoginBloc>().add(const LoginSubmitted());
                    }
                  },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              Size(MediaQuery.of(context).size.width, 48),
            ),
          ),
          child: Text(
            context.appLocalizations.loginBtn,
            style: context.textTheme.kTextButton1,
          ),
        );
      },
    );
  }
}
