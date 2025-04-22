import 'package:formz/formz.dart';

enum CodeValidationError { empty }

class CodeInputModel extends FormzInput<String, CodeValidationError> {
  const CodeInputModel.pure() : super.pure('');
  const CodeInputModel.dirty([super.value = '']) : super.dirty();

  @override
  CodeValidationError? validator(String value) {
    if (value.isEmpty) return CodeValidationError.empty;
    return null;
  }
}
