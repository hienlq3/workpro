import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/wp_core.dart';
import 'package:wp_notification/src/local_notification/local_notification_service.dart';

@lazySingleton
class FirebaseService {
  final FirebaseMessaging _firebaseMessaging;

  FirebaseService(this._firebaseMessaging);

  Future<void> initFirebaseMessaging() async {
    final token = await _firebaseMessaging.getToken();
    await AppConstraint.setDeviceId(token ?? '');

    FirebaseMessaging.onMessage.listen(
      LocalNotificationService.showNotification,
    );

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});
  }
}
