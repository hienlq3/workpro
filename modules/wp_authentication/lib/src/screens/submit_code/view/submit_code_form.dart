import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_localization/wp_localization.dart';

class SubmitCodeForm extends StatelessWidget {
  const SubmitCodeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SubmitCodeBloc, SubmitCodeState>(
      listener: (context, state) {
        if (state.status.isFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(const SnackBar(content: Text('Invalid Code')));
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.kSpace16,
        children: [
          _buildTitle(context),
          const _CodeInput(),
          const _SubmitCodeButton(),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpacing.kSpace16,
        bottom: AppSpacing.kSpace8,
      ),
      child: Text(
        context.appLocalizations.enterCompanyCodePrompt,
        style: context.textTheme.kTitle2,
      ),
    );
  }
}

class _CodeInput extends StatelessWidget {
  const _CodeInput();

  @override
  Widget build(BuildContext context) {
    final displayError = context.select(
      (SubmitCodeBloc bloc) => bloc.state.code.displayError,
    );
    return WpTextFormField(
      onChanged:
          (code) => context.read<SubmitCodeBloc>().add(CodeChanged(code: code)),
      labelText: context.appLocalizations.codeLabel,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.appLocalizations.requiredValidation;
        }
        return null;
      },
      errorText: displayError != null ? 'Không được để trống' : null,
      textCapitalization: TextCapitalization.characters,
    );
  }
}

class _SubmitCodeButton extends StatelessWidget {
  const _SubmitCodeButton();

  @override
  Widget build(BuildContext context) {
    final isInProgressOrSuccess = context.select(
      (SubmitCodeBloc bloc) => bloc.state.status.isInProgressOrSuccess,
    );

    if (isInProgressOrSuccess) return const CircularProgressIndicator();

    final isValid = context.select((SubmitCodeBloc bloc) => bloc.state.isValid);
    return ElevatedButton(
      onPressed:
          isValid
              ? () => context.read<SubmitCodeBloc>().add(const CodeSubmitted())
              : null,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          Size(context.mediaQuery.size.width, 48),
        ),
      ),
      child: Text(
        context.appLocalizations.submitBtn,
        style: context.textTheme.kTextButton1,
      ),
    );
  }
}
