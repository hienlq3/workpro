import 'package:firebase_core/firebase_core.dart';
import 'package:wp_notification/src/firebase_options.dart';
import 'package:wp_notification/src/firebase_service.dart';
import 'package:wp_notification/src/local_notification_service.dart';

class WPNotification {
  static Future<void> initialize() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await Future.delayed(Duration(seconds: 1));
    await LocalNotificationService.initialize();
    await FirebaseService().initFirebaseMessaging();
  }
}
