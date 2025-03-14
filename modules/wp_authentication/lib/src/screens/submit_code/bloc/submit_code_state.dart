part of 'submit_code_bloc.dart';

enum SubmitCodeStatus { initial, loading, success, error }

class SubmitCodeState extends Equatable {
  final String code;
  final SubmitCodeStatus status;
  final String errorText;

  const SubmitCodeState({
    this.code = '',
    this.status = SubmitCodeStatus.initial,
    this.errorText = '',
  });

  SubmitCodeState copyWith({
    String? code,
    SubmitCodeStatus? status,
    String? errorText,
  }) {
    return SubmitCodeState(
      code: code ?? this.code,
      status: status ?? this.status,
      errorText: errorText ?? this.errorText,
    );
  }

  bool get isLoading => status == SubmitCodeStatus.loading;

  @override
  List<Object> get props => [code, status, errorText];
}
