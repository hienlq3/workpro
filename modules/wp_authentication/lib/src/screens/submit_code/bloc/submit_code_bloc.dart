import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';
import 'package:wp_core/wp_core.dart';

part 'submit_code_event.dart';
part 'submit_code_state.dart';

@injectable
class SubmitCodeBloc extends Bloc<SubmitCodeEvent, SubmitCodeState> {
  final AuthenticationRepository _authenticationRepository;

  SubmitCodeBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(SubmitCodeState()) {
    on<CodeChanged>(_onCodeChanged);
    on<CodeSubmitted>(_onCodeSubmitted);
    if (AppConstraint.getCode().isNotEmpty) {
      add(CodeChanged(code: AppConstraint.getCode()));
      add(CodeSubmitted());
    }
  }

  void _onCodeChanged(CodeChanged event, Emitter<SubmitCodeState> emit) =>
      emit(state.copyWith(code: event.code));

  Future<void> _onCodeSubmitted(
    CodeSubmitted event,
    Emitter<SubmitCodeState> emit,
  ) async {
    try {
      emit(state.copyWith(status: SubmitCodeStatus.loading));
      await _authenticationRepository.submitCode(code: state.code);
      emit(state.copyWith(status: SubmitCodeStatus.success));
    } catch (error, trace) {
      onError(error, trace);
      emit(
        state.copyWith(
          errorText: error.toString(),
          status: SubmitCodeStatus.error,
        ),
      );
    }
  }
}
