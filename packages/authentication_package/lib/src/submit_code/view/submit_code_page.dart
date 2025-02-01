import 'package:authentication_package/src/submit_code/view/submit_code_form.dart';
import 'package:flutter/material.dart';

class SubmitCodePage extends StatelessWidget {
  const SubmitCodePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SubmitCodePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: const SubmitCodeForm(),
        ),
      ),
    );
  }
}
