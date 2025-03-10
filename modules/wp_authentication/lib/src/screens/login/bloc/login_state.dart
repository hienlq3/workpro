part of 'login_bloc.dart';

enum LoginStatus { initial, loading, success, error }

class LoginState extends Equatable {
  final String username;
  final String password;
  final LoginStatus status;
  final String errorText;

  const LoginState({
    this.username = '',
    this.password = '',
    this.status = LoginStatus.initial,
    this.errorText = '',
  });

  LoginState copyWith({
    String? username,
    String? password,
    LoginStatus? status,
    String? errorText,
  }) {
    return LoginState(
      username: username ?? this.username,
      password: password ?? this.password,
      status: status ?? this.status,
      errorText: errorText ?? this.errorText,
    );
  }

  bool get isLoading => status == LoginStatus.loading;
  bool get isError => status == LoginStatus.error;

  @override
  List<Object> get props => [username, password, status, errorText];
}
