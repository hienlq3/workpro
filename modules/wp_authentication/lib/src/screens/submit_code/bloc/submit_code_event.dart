part of 'submit_code_bloc.dart';

sealed class SubmitCodeEvent extends Equatable {
  const SubmitCodeEvent();

  @override
  List<Object> get props => [];
}

class CodeChanged extends SubmitCodeEvent {
  const CodeChanged({required this.code});
  final String code;

  @override
  List<Object> get props => [code];
}

class CodeSubmitted extends SubmitCodeEvent {
  const CodeSubmitted();
}
