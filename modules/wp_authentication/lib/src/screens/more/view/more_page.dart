import 'package:flutter/material.dart';
import 'package:wp_authentication/src/screens/more/view/more_form.dart';
import 'package:wp_core/wp_core.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.kSpace16),
          child: const MoreForm(),
        ),
      ),
    );
  }
}
