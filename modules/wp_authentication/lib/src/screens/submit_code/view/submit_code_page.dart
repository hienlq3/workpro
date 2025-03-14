import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:wp_authentication/src/screens/submit_code/view/submit_code_form.dart';
import 'package:wp_core/core_package.dart';
import 'package:wp_core/injection.dart';

class SubmitCodePage extends StatelessWidget {
  const SubmitCodePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SubmitCodePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SubmitCodeBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: context.mediaQuery.size.height / 7,
                left: AppSpacing.kSpace16,
                right: AppSpacing.kSpace16,
              ),
              child: const SubmitCodeForm(),
            ),
          ),
        ),
      ),
    );
  }
}
