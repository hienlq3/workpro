import 'package:authentication_package/src/repositories/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'submit_code_event.dart';
part 'submit_code_state.dart';

@singleton
class SubmitCodeBloc extends Bloc<SubmitCodeEvent, SubmitCodeState> {
  final AuthenticationRepository _authenticationRepository;

  SubmitCodeBloc({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(SubmitCodeInitial()) {
    on<CodeChanged>(_onCodeChanged);
    on<CodeSubmitted>(_onCodeSubmitted);
  }

  void _onCodeChanged(CodeChanged event, Emitter<SubmitCodeState> emit) {
    emit(SubmitCodeUpdated(code: event.code));
  }

  Future<void> _onCodeSubmitted(
      CodeSubmitted event, Emitter<SubmitCodeState> emit) async {
    try {
      final currentState = state;
      if (currentState is SubmitCodeUpdated) {
        emit(SubmitCodeLoading());
        await _authenticationRepository.submitCode(code: currentState.code);
        emit(SubmitCodeSuccess());
      } else {
        emit(SubmitCodeFailure('Invalid code'));
      }
    } catch (e) {
      emit(SubmitCodeFailure(e.toString()));
    }
  }
}
