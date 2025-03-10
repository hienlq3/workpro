import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:wp_core/core_package.dart';

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
              'Hãy nhập mã công ty của bạn',
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
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return WpTextFormField(
          onChanged:
              (code) =>
                  context.read<SubmitCodeBloc>().add(CodeChanged(code: code)),
          labelText: 'Code',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
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
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppRadius.kMediumBorderRadius,
                ),
              ),
            ),
            padding: WidgetStateProperty.resolveWith<EdgeInsetsGeometry>((
              Set<WidgetState> states,
            ) {
              return EdgeInsets.symmetric(
                vertical: AppSpacing.kSpace12,
                horizontal: AppSpacing.kSpace24,
              );
            }),
          ),
          child: Text('Submit', style: context.textTheme.kTextButton1),
        );
      },
    );
  }
}
