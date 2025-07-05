import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

final logger = Logger();

abstract class MeasuredBloc<Event, State> extends Bloc<Event, State> {
  MeasuredBloc(State initialState) : super(initialState);

  /// Đăng ký event với transformer + đo time
  void onMeasured<E extends Event>(
    EventHandler<E, State> handler, {
    EventTransformer<E>? transformer,
  }) {
    on<E>((event, emit) async {
      final start = DateTime.now();
      await handler(event, emit);
      final duration = DateTime.now().difference(start);
      logger.i('${event.runtimeType} handled in ${duration.inMilliseconds} ms');
    }, transformer: transformer);
  }
}
