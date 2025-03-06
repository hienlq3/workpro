import 'package:authentication_package/src/repositories/authentication_repository.dart';
import 'package:authentication_package/src/screens/submit_code/bloc/submit_code_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepository extends Mock
    implements AuthenticationRepository {}

void main() {
  late SubmitCodeBloc submitCodeBloc;
  late MockAuthenticationRepository mockAuthenticationRepository;

  setUp(() {
    mockAuthenticationRepository = MockAuthenticationRepository();
    submitCodeBloc =
        SubmitCodeBloc(authenticationRepository: mockAuthenticationRepository);
  });

  tearDown(() {
    submitCodeBloc.close();
  });

  test('initial state is SubmitCodeInitial', () {
    expect(submitCodeBloc.state, SubmitCodeInitial());
  });

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [SubmitCodeUpdated] when CodeChanged is added',
    build: () => submitCodeBloc,
    act: (bloc) => bloc.add(CodeChanged(code: 'HuyND62T')),
    expect: () => [SubmitCodeUpdated(code: 'HuyND62T')],
  );

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [SubmitCodeLoading, SubmitCodeSuccess] when valid CodeSubmitted is added',
    build: () {
      when(() => mockAuthenticationRepository.submitCode(code: 'HuyND62T'))
          .thenAnswer((_) async => Future.value());
      return submitCodeBloc;
    },
    seed: () => SubmitCodeUpdated(code: 'HuyND62T'),
    act: (bloc) => bloc.add(CodeSubmitted()),
    expect: () => [SubmitCodeLoading(), SubmitCodeSuccess()],
  );

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [SubmitCodeLoading, SubmitCodeFailure] when submitCode throws an error',
    build: () {
      when(() => mockAuthenticationRepository.submitCode(code: 'HuyND62T'))
          .thenThrow(Exception('Invalid code'));
      return submitCodeBloc;
    },
    seed: () => SubmitCodeUpdated(code: 'HuyND62T'),
    act: (bloc) => bloc.add(CodeSubmitted()),
    expect: () =>
        [SubmitCodeLoading(), SubmitCodeFailure('Exception: Invalid code')],
  );

  blocTest<SubmitCodeBloc, SubmitCodeState>(
    'emits [SubmitCodeFailure] when CodeSubmitted is called in an invalid state',
    build: () => submitCodeBloc,
    act: (bloc) => bloc.add(CodeSubmitted()),
    expect: () => [SubmitCodeFailure('Invalid code')],
  );
}
