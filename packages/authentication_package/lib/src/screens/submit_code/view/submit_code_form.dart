import 'package:authentication_package/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubmitCodeForm extends StatefulWidget {
  const SubmitCodeForm({super.key});

  @override
  State<SubmitCodeForm> createState() => _SubmitCodeFormState();
}

class _SubmitCodeFormState extends State<SubmitCodeForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: AppSpacing.kSpace20,
          children: [
            _CodeInput(),
            _SubmitCodeButton(formKey: _formKey),
          ],
        ),
      ),
    );
  }
}

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubmitCodeBloc, SubmitCodeState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return WpTextFormField(
          key: const Key('submitCodeForm_codeInput_textField'),
          onChanged: (code) =>
              context.read<SubmitCodeBloc>().add(CodeChanged(code: code)),
          labelText: 'Code',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          value: state.code,
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
          key: const Key('submitCodeForm_continue_raisedButton'),
          onPressed: state.isLoading
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
          child: const Text('Submit'),
        );
      },
    );
  }
}
