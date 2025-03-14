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
}
