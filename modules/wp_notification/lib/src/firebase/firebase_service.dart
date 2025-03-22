import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/local_notification/local_notification_service.dart';

class FirebaseService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initFirebaseMessaging() async {
    String? token = await _firebaseMessaging.getToken();
    await AppConstraint.setDeviceId(token ?? '');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      LocalNotificationService.showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }
}
