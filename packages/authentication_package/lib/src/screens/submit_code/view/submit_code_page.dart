import 'package:authentication_package/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:authentication_package/src/screens/submit_code/view/submit_code_form.dart';
import 'package:core_package/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: const SubmitCodeForm(),
          ),
        ),
      ),
    );
  }
}
