import 'package:injectable/injectable.dart';
import 'package:wp_core/injection.dart';
import 'package:wp_notification/injection.config.dart';

@InjectableInit()
void configureNotificationDependencies() => getIt.init();
