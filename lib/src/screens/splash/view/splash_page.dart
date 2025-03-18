import 'package:flutter/material.dart';
import 'package:wp_core/wp_core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: AppSpacing.kSpace12,
            children: [
              Image(
                image: AssetImage(Assets.kLogoImagePath),
              ),
              Text(
                'Tinh hoa quản trị',
                style: context.textTheme.kXXLRegular,
              )
            ],
          ),
        ),
      ),
    );
  }
}
