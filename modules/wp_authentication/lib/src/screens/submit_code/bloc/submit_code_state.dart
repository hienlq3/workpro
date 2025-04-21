part of 'submit_code_bloc.dart';

class SubmitCodeState extends Equatable {
  const SubmitCodeState({
    this.code = const CodeInputModel.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.errorText = '',
    this.isValid = false,
  });
  final CodeInputModel code;
  final FormzSubmissionStatus status;
  final String errorText;
  final bool isValid;

  SubmitCodeState copyWith({
    CodeInputModel? code,
    FormzSubmissionStatus? status,
    String? errorText,
    bool? isValid,
  }) {
    return SubmitCodeState(
      code: code ?? this.code,
      status: status ?? this.status,
      errorText: errorText ?? this.errorText,
      isValid: isValid ?? this.isValid,
    );
  }

  @override
  List<Object> get props => [code, status];
}
