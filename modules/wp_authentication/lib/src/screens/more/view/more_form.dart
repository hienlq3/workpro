import 'package:flutter/material.dart';
import 'package:wp_authentication/src/screens/more/components/language_tile.dart';
import 'package:wp_authentication/src/screens/more/components/logout_button.dart';

class MoreForm extends StatelessWidget {
  const MoreForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [LanguageTile(), LogoutButton()]);
  }
}
