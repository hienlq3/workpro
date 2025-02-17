part of 'submit_code_bloc.dart';

sealed class SubmitCodeState extends Equatable {
  const SubmitCodeState();

  @override
  List<Object> get props => [];
}

final class SubmitCodeInitial extends SubmitCodeState {}

final class SubmitCodeUpdated extends SubmitCodeState {
  final String code;

  const SubmitCodeUpdated({required this.code});

  @override
  List<Object> get props => [code];
}

final class SubmitCodeLoading extends SubmitCodeState {}

final class SubmitCodeSuccess extends SubmitCodeState {}

final class SubmitCodeFailure extends SubmitCodeState {
  final String errorText;

  const SubmitCodeFailure(this.errorText);

  @override
  List<Object> get props => [errorText];
}
