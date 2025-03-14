import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/models/auth_model.dart';
import 'package:wp_authentication/src/models/code_model.dart';
import 'package:wp_core/core_package.dart';
import 'package:wp_core/injection.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@singleton
class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final SystemPropertyService _systemPropertyService;
  final UserService _userService;

  AuthenticationRepository({
    required SystemPropertyService systemPropertyService,
    required UserService userService,
  }) : _systemPropertyService = systemPropertyService,
       _userService = userService;

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unknown;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    try {
      final responseJson = await _userService.login(
        username: username,
        password: password,
      );
      final authResponse = BaseResponseModel<AuthModel>.fromJson(
        responseJson,
        (json) => AuthModel.fromJson(json as Map<String, dynamic>),
      );
      final userInfo = authResponse.userInfo;
      if (userInfo != null) {
        getIt<Dio>().options.headers[AppConstain.kSToken] = userInfo.loginToken;
        _controller.add(AuthenticationStatus.authenticated);
      }
    } catch (error) {
      throw error.toString();
    }
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void logOutCode() {
    _controller.add(AuthenticationStatus.unknown);
  }

  void dispose() => _controller.close();

  Future<void> submitCode({required String code}) async {
    try {
      final result = await _systemPropertyService.getCode(code: code);
      final codeResult = CodeModel.fromJson(result);
      getIt<Dio>().options.baseUrl = codeResult.urlSpro;
      if (codeResult.taskbarColor?.isNotEmpty == true) {
        AppColor.setPrimaryColor(codeResult.taskbarColor!);
      }
      _controller.add(AuthenticationStatus.unauthenticated);
    } catch (error) {
      throw 'Failed to submit code!';
    }
  }
}
