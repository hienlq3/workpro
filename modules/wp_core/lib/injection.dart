import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_core/src/utils/app_bloc_observer.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async {
  Bloc.observer = AppBlocObserver();
  await dotenv.load(fileName: 'packages/wp_core/.env');
  return getIt.init();
}
