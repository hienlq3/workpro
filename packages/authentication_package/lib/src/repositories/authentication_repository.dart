import 'dart:async';

import 'package:authentication_package/injection.dart';
import 'package:authentication_package/src/data/service/system_property_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

@singleton
class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();
  final SystemPropertyService _systemPropertyService;

  AuthenticationRepository({
    required SystemPropertyService systemPropertyService,
  }) : _systemPropertyService = systemPropertyService;

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unknown;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();

  Future<void> submitCode({required String code}) async {
    try {
      final result = await _systemPropertyService.getCode(code: code);
      if (result != null) {
        getIt<Dio>().options.baseUrl = result.urlSpro;
        _controller.add(AuthenticationStatus.unauthenticated);
      } else {
        throw 'Failed to submit code!';
      }
    } catch (e) {
      throw e.toString();
    }
  }
}
