import 'dart:ui';

import 'package:wp_core/src/config/app_info.dart';
import 'package:wp_core/src/utils/default_key_value_storage.dart';

class AppConstraint {
  const AppConstraint._();

  static String getCode() {
    return DefaultKeyValueStorage().getCommon(AppInfo.kCodeKey) ?? '';
  }

  static Future<bool> setCode(String code) async {
    return await DefaultKeyValueStorage().setCommon(AppInfo.kCodeKey, code);
  }

  static String getSproUrl() {
    return DefaultKeyValueStorage().getCommon(AppInfo.kSproUrley) ?? '';
  }

  static Future<bool> setSproUrl(String sproUrl) async {
    return await DefaultKeyValueStorage().setCommon(
      AppInfo.kSproUrley,
      sproUrl,
    );
  }

  static Future<String?> getSproToken() {
    return DefaultKeyValueStorage().getEncrypted(AppInfo.kSproTokenKey);
  }

  static Future<bool> setSproToken(String token) async {
    return await DefaultKeyValueStorage().setEncrypted(
      AppInfo.kSproTokenKey,
      token,
    );
  }

  static String getLanguageCode() {
    return DefaultKeyValueStorage().getCommon(AppInfo.kLanguageCodeKey) ??
        PlatformDispatcher.instance.locale.languageCode;
  }

  static Future<bool> setLanguageCode(String languageCode) async {
    return await DefaultKeyValueStorage().setCommon(
      AppInfo.kLanguageCodeKey,
      languageCode,
    );
  }

  static String getDeviceId() {
    return DefaultKeyValueStorage().getCommon(AppInfo.kDeviceIdKey) ?? '';
  }

  static Future<bool> setDeviceId(String deviceId) async {
    return await DefaultKeyValueStorage().setCommon(
      AppInfo.kDeviceIdKey,
      deviceId,
    );
  }

  static Future<bool> clearAllCommon() async {
    return await DefaultKeyValueStorage().clearAllCommon();
  }

  static Future<bool> clearAllEncrypted() async {
    return await DefaultKeyValueStorage().clearAllEncrypted();
  }
}
