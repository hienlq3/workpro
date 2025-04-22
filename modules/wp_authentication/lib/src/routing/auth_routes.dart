import 'package:go_router/go_router.dart';
import 'package:wp_authentication/src/screens/login/login.dart';
import 'package:wp_authentication/src/screens/more/view/more_page.dart';
import 'package:wp_authentication/src/screens/submit_code/submit_code.dart';
import 'package:wp_core/wp_core.dart';

final List<GoRoute> authRoutes = [
  GoRoute(
    path: AppRoutes.kLogin,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: AppRoutes.kSubmitCode,
    builder: (context, state) => const SubmitCodePage(),
  ),
  GoRoute(path: AppRoutes.kMore, builder: (context, state) => const MorePage()),
];
