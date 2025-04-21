import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/models/auth_model.dart';
import 'package:wp_authentication/src/models/code_model.dart';
import 'package:wp_core/wp_core.dart';

enum AuthenticationStatus {
  unknown,
  enteringCode,
  authenticated,
  unauthenticated,
}

@singleton
class AuthenticationRepository {
  AuthenticationRepository({
    required SystemPropertyService systemPropertyService,
    required UserService userService,
    required BaseUrlNotifier baseUrlNotifier,
    required HeadersNotifier headersNotifier,
  }) : _systemPropertyService = systemPropertyService,
       _userService = userService,
       _baseUrlNotifier = baseUrlNotifier,
       _headersNotifier = headersNotifier;
  final _controller = StreamController<AuthenticationStatus>();
  final SystemPropertyService _systemPropertyService;
  final UserService _userService;
  final BaseUrlNotifier _baseUrlNotifier;
  final HeadersNotifier _headersNotifier;

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.enteringCode;
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
      if (responseJson != null) {
        final authResponse = BaseResponseModel<AuthModel>.fromJson(
          responseJson,
          (json) =>
              json != null
                  ? AuthModel.fromJson(json as Map<String, dynamic>)
                  : const AuthModel(),
        );
        final userInfo = authResponse.userInfo;
        if (userInfo != null) {
          if (!userInfo.validateLoginToken()) {
            _headersNotifier.updateHeader(AppInfo.kSToken, userInfo.loginToken);
            await AppConstraint.setSproToken(userInfo.loginToken);
            _controller.add(AuthenticationStatus.authenticated);
          }
        }
      }
    } on Exception {
      rethrow;
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
    _controller.add(AuthenticationStatus.enteringCode);
  }

  void dispose() => _controller.close();

  Future<CodeModel?> submitCode({required String code}) async {
    try {
      final result = await _systemPropertyService.getCode(code: code);
      if (result != null) {
        final codeResult = CodeModel.fromJson(result);
        if (!codeResult.validateUrlSpro()) {
          _baseUrlNotifier.baseUrl = codeResult.urlSpro;
        }
        if (codeResult.code?.isNotEmpty ?? false) {
          await AppConstraint.setCode(codeResult.code!);
        }
        // if (codeResult.taskbarColor?.isNotEmpty == true) {
        //   AppColor.setPrimaryColor(codeResult.taskbarColor!);
        // }
        _controller.add(AuthenticationStatus.unauthenticated);
        return codeResult;
      }
      return null;
    } on Exception {
      rethrow;
    }
  }

  Future<void> handleTokenAvailable() async {
    final sproToken = await AppConstraint.getSproToken();
    if (sproToken?.isNotEmpty ?? false) {
      _headersNotifier.updateHeader(AppInfo.kSToken, sproToken!);
      _controller.add(AuthenticationStatus.authenticated);
    }
  }
}
