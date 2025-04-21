import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/models/code_input_model.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';
import 'package:wp_core/wp_core.dart';

part 'submit_code_event.dart';
part 'submit_code_state.dart';

@injectable
class SubmitCodeBloc extends Bloc<SubmitCodeEvent, SubmitCodeState> {
  SubmitCodeBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const SubmitCodeState()) {
    on<CodeChanged>(_onCodeChanged);
    on<CodeSubmitted>(_onCodeSubmitted);
    if (AppConstraint.getCode().isNotEmpty) {
      add(CodeChanged(code: AppConstraint.getCode()));
      add(const CodeSubmitted());
    }
  }
  final AuthenticationRepository _authenticationRepository;

  void _onCodeChanged(CodeChanged event, Emitter<SubmitCodeState> emit) {
    final code = CodeInputModel.dirty(event.code);
    emit(state.copyWith(code: code, isValid: Formz.validate([code])));
  }

  Future<void> _onCodeSubmitted(
    CodeSubmitted event,
    Emitter<SubmitCodeState> emit,
  ) async {
    if (state.isValid) {
      try {
        emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
        final result = await _authenticationRepository.submitCode(
          code: state.code.value,
        );
        if (result != null) {
          emit(state.copyWith(status: FormzSubmissionStatus.success));
        } else {
          emit(state.copyWith(status: FormzSubmissionStatus.failure));
        }
      } catch (error, trace) {
        onError(error, trace);
        emit(state.copyWith(status: FormzSubmissionStatus.failure));
      }
    }
  }
}
