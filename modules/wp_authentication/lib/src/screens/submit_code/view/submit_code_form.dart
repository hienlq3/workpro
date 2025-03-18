import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_localization/wp_localization.dart';

class SubmitCodeForm extends StatefulWidget {
  const SubmitCodeForm({super.key});

  @override
  State<SubmitCodeForm> createState() => _SubmitCodeFormState();
}

class _SubmitCodeFormState extends State<SubmitCodeForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.kSpace16,
              bottom: AppSpacing.kSpace8,
            ),
            child: Text(
              context.appLocalizations.enterCompanyCodePrompt,
              style: context.textTheme.kTitle2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacing.kSpace16),
            child: _CodeInput(),
          ),
          _SubmitCodeButton(formKey: _formKey),
        ],
      ),
    );
  }
}

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmitCodeBloc, SubmitCodeState>(
      buildWhen:
          (previous, current) =>
              previous.errorText != current.errorText ||
              previous.status != current.status,
      builder: (context, state) {
        return WpTextFormField(
          onChanged:
              (code) =>
                  context.read<SubmitCodeBloc>().add(CodeChanged(code: code)),
          labelText: context.appLocalizations.codeLabel,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return context.appLocalizations.requiredValidation;
            }
            return null;
          },
          errorText: state.errorText,
          textCapitalization: TextCapitalization.characters,
          disabled: state.isLoading,
        );
      },
    );
  }
}

class _SubmitCodeButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const _SubmitCodeButton({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmitCodeBloc, SubmitCodeState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed:
              state.isLoading
                  ? null
                  : () {
                    if (formKey.currentState!.validate()) {
                      context.read<SubmitCodeBloc>().add(CodeSubmitted());
                    }
                  },
          style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(
              Size(MediaQuery.of(context).size.width, 48.0),
            ),
          ),
          child: Text(
            context.appLocalizations.submitBtn,
            style: context.textTheme.kTextButton1,
          ),
        );
      },
    );
  }
}
