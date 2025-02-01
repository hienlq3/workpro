import 'package:core_package/core_package.dart';
import 'package:flutter/material.dart';

class SubmitCodeForm extends StatelessWidget {
  const SubmitCodeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: AppSpacing.kSpace12,
        children: [
          _CodeInput(),
          _SubmitCodeButton(),
        ],
      ),
    );
  }
}

class _CodeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WpTextFormField(
      key: const Key('submitCodeForm_codeInput_textField'),
      onChanged: (code) {},
      label: 'Code',
    );
  }
}

class _SubmitCodeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('submitCodeForm_continue_raisedButton'),
      onPressed: () {},
      child: const Text('Submit'),
    );
  }
}
