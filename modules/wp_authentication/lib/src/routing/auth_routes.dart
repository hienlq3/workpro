import 'package:go_router/go_router.dart';
import 'package:wp_authentication/src/screens/login/login.dart';
import 'package:wp_authentication/src/screens/submit_code/submit_code.dart';
import 'package:wp_core/core_package.dart';

final List<GoRoute> authRoutes = [
  GoRoute(path: AppRoutes.kLogin, builder: (context, state) => LoginPage()),
  GoRoute(
    path: AppRoutes.kSubmitCode,
    builder: (context, state) => SubmitCodePage(),
  ),
];
