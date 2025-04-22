import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/view/submit_code_form.dart';
import 'package:wp_core/wp_core.dart';

class SubmitCodePage extends StatelessWidget {
  const SubmitCodePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SubmitCodePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubmitCodeBloc>(),
      child: const Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSpacing.kSpace16,
              right: AppSpacing.kSpace16,
            ),
            child: SubmitCodeForm(),
          ),
        ),
      ),
    );
  }
}
