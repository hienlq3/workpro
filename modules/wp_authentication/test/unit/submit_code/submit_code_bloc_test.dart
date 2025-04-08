import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wp_authentication/src/repositories/authentication_repository.dart';
import 'package:wp_authentication/src/screens/submit_code/bloc/submit_code_bloc.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  late SubmitCodeBloc submitCodeBloc;
  late MockAuthenticationRepository mockAuthenticationRepository;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    submitCodeBloc = SubmitCodeBloc(
      authenticationRepository: mockAuthenticationRepository,
    );
  });

  tearDown(() {
    submitCodeBloc.close();
  });

  test('initial state is SubmitCodeState()', () {
    expect(submitCodeBloc.state, const SubmitCodeState());
  });

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits new state with updated code when CodeChanged is added',
    build: () => submitCodeBloc,
    act: (bloc) => bloc.add(const CodeChanged(code: '123456')),
    expect: () => [const SubmitCodeState(code: '123456')],
  );

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [loading, success] when CodeSubmitted is successful',
    build: () {
      when(
        () => mockAuthenticationRepository.submitCode(code: any(named: 'code')),
      ).thenAnswer((_) async => {});
      return submitCodeBloc;
    },
    act: (bloc) {
      bloc.add(const CodeChanged(code: '123456'));
      bloc.add(const CodeSubmitted());
    },
    expect:
        () => [
          const SubmitCodeState(code: '123456'),
          const SubmitCodeState(
            code: '123456',
            status: SubmitCodeStatus.loading,
          ),
          const SubmitCodeState(
            code: '123456',
            status: SubmitCodeStatus.success,
          ),
        ],
    verify: (_) {
      verify(
        () => mockAuthenticationRepository.submitCode(code: '123456'),
      ).called(1);
    },
  );

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [loading, error] when CodeSubmitted fails',
    build: () {
      when(
        () => mockAuthenticationRepository.submitCode(code: any(named: 'code')),
      ).thenThrow(Exception('Invalid code'));
      return submitCodeBloc;
    },
    act: (bloc) {
      bloc.add(const CodeChanged(code: 'wrongcode'));
      bloc.add(const CodeSubmitted());
    },
    expect:
        () => [
          const SubmitCodeState(code: 'wrongcode'),
          const SubmitCodeState(
            code: 'wrongcode',
            status: SubmitCodeStatus.loading,
          ),
          const SubmitCodeState(
            code: 'wrongcode',
            status: SubmitCodeStatus.error,
            errorText: 'Exception: Invalid code',
          ),
        ],
  );
}
