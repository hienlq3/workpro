import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthenticationRepository authenticationRepository})
    : _authenticationRepository = authenticationRepository,
      super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
    on<LogoutCodeSubmitted>(_onLogoutCodeSubmitted);
  }
  final AuthenticationRepository _authenticationRepository;

  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) => emit(state.copyWith(username: event.username));

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) => emit(state.copyWith(password: event.password));

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));
      await _authenticationRepository.logIn(
        username: state.username,
        password: state.password,
      );
      emit(state.copyWith(status: LoginStatus.success));
    } catch (error) {
      emit(
        state.copyWith(errorText: error.toString(), status: LoginStatus.error),
      );
    } finally {
      emit(state.copyWith(errorText: '', status: LoginStatus.initial));
    }
  }

  void _onLogoutCodeSubmitted(
    LogoutCodeSubmitted event,
    Emitter<LoginState> emit,
  ) {
    _authenticationRepository.logOutCode();
  }
}
