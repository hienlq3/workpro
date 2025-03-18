import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/routing/app_router.dart';
import 'package:flutter_application_1/src/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wp_authentication/wp_authentication.dart';
import 'package:wp_authentication/injection.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_core/injection.dart';
import 'package:wp_localization/wp_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  configureAuthenticationDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: getIt<AuthenticationRepository>(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
              lazy: false,
              create: (context) => AuthenticationBloc(
                  authenticationRepository: getIt<AuthenticationRepository>())),
          BlocProvider<LocalizationBloc>(
            create: (context) => LocalizationBloc(),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: AppColor.wpPrimaryColor,
      builder: (context, primaryColor, child) {
        return BlocBuilder<LocalizationBloc, LocalizationState>(
          buildWhen: (previous, current) => previous.locale != current.locale,
          builder: (context, state) {
            return MaterialApp.router(
              title: AppInfo.kTitle,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                useMaterial3: false,
                fontFamily: 'Inter',
                primaryColor: primaryColor,
                scaffoldBackgroundColor: Colors.white,
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppRadius.kMediumBorderRadius,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: AppSpacing.kSpace12,
                        horizontal: AppSpacing.kSpace24,
                      ),
                      elevation: 0.0),
                ),
              ),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: state.supportedLocales,
              locale: state.locale,
              builder: (context, child) {
                return BlocListener<AuthenticationBloc, AuthenticationState>(
                  listener: (context, state) {
                    AppRouter.router.refresh();
                  },
                  child: child,
                );
              },
              routeInformationParser: AppRouter.router.routeInformationParser,
              routerDelegate: AppRouter.router.routerDelegate,
              routeInformationProvider:
                  AppRouter.router.routeInformationProvider,
            );
          },
        );
      },
    );
  }
}
