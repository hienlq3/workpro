import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:wp_notification/src/firebase/firebase_options.dart';
import 'package:wp_notification/src/firebase/firebase_service.dart';
import 'package:wp_notification/src/local_notification/local_notification_service.dart';
export 'src/screens/notifications/view/notifications_page.dart';

class WPNotification {
  static Future<void> initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await LocalNotificationService.initialize();
    await FirebaseService().initFirebaseMessaging();
    await FlutterAppBadger.removeBadge();
  }
}
