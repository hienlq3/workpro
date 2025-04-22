import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:wp_core/src/utils/app_bloc_observer.dart';

import 'src/injector/injector.dart';

export 'src/components/components.dart';
export 'src/config/config.dart';
export 'src/models/models.dart';
export 'src/service/service.dart';
export 'src/utils/app_constraint.dart';
export 'src/utils/extensions/build_context.dart';
export 'src/utils/extensions/list_extension.dart';
export 'src/utils/extensions/string_date_time_extension.dart';
export 'src/utils/extensions/string_extension.dart';
export 'src/utils/notifier/base_url_notifier.dart';
export 'src/utils/notifier/headers_notifier.dart';

final getIt = GetIt.instance;

class WPCore {
  static Future<void> initialize() async {
    _setupBlocObserver();
    await _loadDotEnv();
    await configCoreInjector(getIt);
  }

  static void _setupBlocObserver() {
    Bloc.observer = AppBlocObserver();
  }

  static Future<void> _loadDotEnv() async {
    await dotenv.load(fileName: 'packages/wp_core/.env');
  }
}
