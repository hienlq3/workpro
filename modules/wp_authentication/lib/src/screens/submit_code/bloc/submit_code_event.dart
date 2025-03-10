part of 'submit_code_bloc.dart';

sealed class SubmitCodeEvent extends Equatable {
  const SubmitCodeEvent();

  @override
  List<Object> get props => [];
}

class CodeChanged extends SubmitCodeEvent {
  final String code;

  const CodeChanged({required this.code});

  @override
  List<Object> get props => [code];
}

class CodeSubmitted extends SubmitCodeEvent {
  const CodeSubmitted();
}
