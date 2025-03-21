import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:wp_notification/src/local_notification_service.dart';

class FirebaseService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  Future<void> initFirebaseMessaging() async {
    // Lấy FCM token
    String? token = await _firebaseMessaging.getToken();
    log("FCM Token: $token");

    // Xử lý khi ứng dụng nhận thông báo
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log("Received notification: ${message.notification?.title}");
      LocalNotificationService.showNotification(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log("User tapped notification: ${message.notification?.title}");
    });
  }
}
