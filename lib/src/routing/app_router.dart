import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/screens/home/view/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wp_authentication/wp_authentication.dart';
import 'package:wp_core/wp_core.dart';

abstract class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.kHome,
        builder: (context, state) => HomePage(),
      ),
      ...authRoutes
    ],
    errorPageBuilder: (context, state) => const MaterialPage(
      child: Scaffold(
        body: Center(
          child: Text('Route not found!'),
        ),
      ),
    ),
    redirect: (context, state) async {
      final status = context.read<AuthenticationBloc>().state.status;
      switch (status) {
        case AuthenticationStatus.authenticated:
          if (state.matchedLocation.equalsIgnoreCase(AppRoutes.kLogin)) {
            return AppRoutes.kMore;
          } else {
            return null;
          }
        case AuthenticationStatus.unauthenticated:
          return AppRoutes.kLogin;
        case AuthenticationStatus.unknown:
          return AppRoutes.kSubmitCode;
      }
    },
  );
}
