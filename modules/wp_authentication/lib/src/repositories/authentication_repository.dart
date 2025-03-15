import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/models/auth_model.dart';
import 'package:wp_authentication/src/models/code_model.dart';
import 'package:wp_core/core_package.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@singleton
class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final SystemPropertyService _systemPropertyService;
  final UserService _userService;
  final BaseUrlNotifier _baseUrlNotifier;
  final HeadersNotifier _headersNotifier;

  AuthenticationRepository({
    required SystemPropertyService systemPropertyService,
    required UserService userService,
    required BaseUrlNotifier baseUrlNotifier,
    required HeadersNotifier headersNotifier,
  }) : _systemPropertyService = systemPropertyService,
       _userService = userService,
       _baseUrlNotifier = baseUrlNotifier,
       _headersNotifier = headersNotifier;

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
        if (!userInfo.validateLoginToken()) {
          _headersNotifier.updateHeader(AppInfo.kSToken, userInfo.loginToken);
          await AppConstraint.setSproToken(userInfo.loginToken);
          _controller.add(AuthenticationStatus.authenticated);
        }
      }
    } catch (error) {
      throw error.toString();
    }
  }

  void logOut() {
    AppConstraint.clearAllEncrypted();
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void logOutCode() {
    _baseUrlNotifier.resetBaseUrl();
    AppConstraint.clearAllCommon();
    AppConstraint.clearAllEncrypted();
    _controller.add(AuthenticationStatus.unknown);
  }

  void dispose() => _controller.close();

  Future<void> submitCode({required String code}) async {
    try {
      final result = await _systemPropertyService.getCode(code: code);
      final codeResult = CodeModel.fromJson(result);
      if (!codeResult.validateUrlSpro()) {
        _baseUrlNotifier.baseUrl = codeResult.urlSpro;
      }
      if (codeResult.code?.isNotEmpty == true) {
        await AppConstraint.setCode(codeResult.code!);
      }
      // if (codeResult.taskbarColor?.isNotEmpty == true) {
      //   AppColor.setPrimaryColor(codeResult.taskbarColor!);
      // }
      _controller.add(AuthenticationStatus.unauthenticated);
    } catch (error) {
      throw 'Failed to submit code!';
    }
  }

  Future<void> handleTokenAvailable() async {
    final sproToken = await AppConstraint.getSproToken();
    if (sproToken?.isNotEmpty == true) {
      _controller.add(AuthenticationStatus.authenticated);
    }
  }
}
