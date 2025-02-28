import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'submit_code_event.dart';
part 'submit_code_state.dart';

class SubmitCodeBloc extends Bloc<SubmitCodeEvent, SubmitCodeState> {
  SubmitCodeBloc() : super(SubmitCodeInitial()) {
    on<CodeChanged>(_onCodeChanged);
    on<CodeSubmitted>(_onCodeSubmitted);
  }

  void _onCodeChanged(CodeChanged event, Emitter<SubmitCodeState> emit) {
    emit(SubmitCodeUpdated(code: event.code));
  }

  Future<void> _onCodeSubmitted(
      CodeSubmitted event, Emitter<SubmitCodeState> emit) async {
    try {
      emit(SubmitCodeLoading());
      await Future.delayed(const Duration(seconds: 2));
      emit(SubmitCodeSuccess());
    } catch (e) {
      emit(const SubmitCodeFailure('Submission failed'));
    }
  }
}
