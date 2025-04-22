import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/services/firebase_service.dart';
import 'package:wp_notification/src/firebase/firebase_options.dart';
import 'package:wp_notification/src/local_notification/local_notification_service.dart';

import 'src/injector/injector.dart';
export 'src/screens/notifications/view/notifications_page.dart';

class WPNotification {
  static Future<void> initialize() async {
    configNotificationInjector(getIt);
    await _initializeFirebaseIfNeeded();
    await _initializeLocalNotifications();
    await _initializeFirebaseMessaging();
    await _clearAppBadge();
  }

  static Future<void> _initializeFirebaseIfNeeded() async {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }
  }

  static Future<void> _initializeLocalNotifications() async {
    await LocalNotificationService.initialize();
  }

  static Future<void> _initializeFirebaseMessaging() async {
    await getIt<FirebaseService>().initFirebaseMessaging();
  }

  static Future<void> _clearAppBadge() async {
    await FlutterAppBadger.removeBadge();
  }
}
