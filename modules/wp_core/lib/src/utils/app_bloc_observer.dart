import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  final logger = Logger(printer: PrettyPrinter());

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logger.d('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.d('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    logger.e('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logger.d('onClose -- ${bloc.runtimeType}');
  }
}
