import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:photon/core/error/failures.dart';
import 'package:photon/features/auth/domain/entities.dart';
import 'package:photon/features/auth/domain/repositories/auth_repository.dart';
import 'package:photon/features/auth/presentation/bloc/bloc.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  SignInFormBloc bloc;
  MockAuthRepository mockAuthRepository;

  final String tValidEmailString = 'valid.email@gmail.com';
  final String tValidPasswordString = 'ThisIsValidPassword';
  final String tInvalidEmailString = 'invalid.email.at.gmail.com';
  final String tInvalidPasswordString = 'short';

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    bloc = SignInFormBloc(mockAuthRepository);
  });

  tearDown(() {
    bloc?.close();
  });

  void setUpMockAuthRepositorySignUpWithEmailSuccess() =>
      when(mockAuthRepository.signUpWithEmail(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Right(unit));

  void setUpMockAuthRepositorySignUpWithEmailFailure() =>
      when(mockAuthRepository.signUpWithEmail(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Left(AuthFailure.emailAlreadyInUse()));

  void setUpMockAuthRepositorySignInWithEmailSuccess() =>
      when(mockAuthRepository.signInWithEmail(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Right(unit));

  void setUpMockAuthRepositorySignInWithEmailFailure() =>
      when(mockAuthRepository.signInWithEmail(
        email: anyNamed('email'),
        password: anyNamed('password'),
      )).thenAnswer((_) async => Left(AuthFailure.invalidEmailOrPassword()));
  void setUpMockAuthRepositorySignInWithGoogleSuccess() =>
      when(mockAuthRepository.signInWithGoogle())
          .thenAnswer((_) async => Right(unit));

  void setUpMockAuthRepositorySignInWithGoogleFailure() =>
      when(mockAuthRepository.signInWithGoogle())
          .thenAnswer((_) async => Left(AuthFailure.cancelledByUser()));

  blocTest(
    'should emit [initial] state as the initial bloc state',
    build: () async => bloc,
    skip: 0,
    expect: [SignInFormState.initial()],
  );

  group('emailChanged Event', () {
    final String tEmailString = 'SomeIntermeddiateEmail';

    blocTest(
      'should not make a call to AuthRepository',
      build: () async => bloc,
      act: (bloc) => bloc.add(SignInFormEvent.emailChanged(tEmailString)),
      verify: (_) async => verifyZeroInteractions(mockAuthRepository),
    );

    blocTest(
      'should emit [state with changed email but no authResponse and not showErrorMessages] when no unsuccessful submit were done before',
      build: () async => bloc,
      act: (bloc) => bloc.add(SignInFormEvent.emailChanged(tEmailString)),
      expect: [
        SignInFormEventMatcher(
          email: Email(tEmailString),
          showErrorMessages: false,
          authResponseOption: none(),
        ),
      ],
    );

    blocTest(
      'should emit [state with changed email and showErrorResponse but no authResponse] when a unsuccessful submit was done before',
      build: () async {
        setUpMockAuthRepositorySignUpWithEmailFailure();
        bloc.add(SignInFormEvent.signUpWithEmail());

        return bloc;
      },
      act: (bloc) => bloc.add(SignInFormEvent.emailChanged(tEmailString)),
      skip: 2,
      expect: [
        SignInFormEventMatcher(
          email: Email(tEmailString),
          showErrorMessages: true,
          authResponseOption: none(),
        ),
      ],
    );
  });

  group('passwordChanged Event', () {
    final String tPasswordString = 'SomeIntermediatePassword';

    blocTest(
      'should not make any call to AuthRepository',
      build: () async => bloc,
      act: (bloc) => bloc.add(SignInFormEvent.passwordChanged(tPasswordString)),
      verify: (_) async => verifyZeroInteractions(mockAuthRepository),
    );

    blocTest(
      'should emit [state with changed password but no authResponse and not showErrorMessages] when no unsuccessful submit were done before',
      build: () async => bloc,
      act: (bloc) => bloc.add(SignInFormEvent.passwordChanged(tPasswordString)),
      expect: [
        SignInFormEventMatcher(
          password: Password(tPasswordString),
          showErrorMessages: false,
          authResponseOption: none(),
        ),
      ],
    );

    blocTest(
      'should emit [state with changed password and showErrorResponse but no authResponse] when a unsuccessful submit was done before',
      build: () async {
        setUpMockAuthRepositorySignUpWithEmailFailure();
        bloc.add(SignInFormEvent.signUpWithEmail());

        return bloc;
      },
      act: (bloc) => bloc.add(SignInFormEvent.passwordChanged(tPasswordString)),
      skip: 2,
      expect: [
        SignInFormEventMatcher(
          password: Password(tPasswordString),
          showErrorMessages: true,
          authResponseOption: none(),
        ),
      ],
    );
  });

  group('signUpWithEmail Event', () {
    group('with valid Email and Password', () {
      setUp(() {
        bloc.add(SignInFormEvent.emailChanged(tValidEmailString));
        bloc.add(SignInFormEvent.passwordChanged(tValidPasswordString));
      });

      blocTest(
        'should make one call to AuthRepository.signUpWithEmail()',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signUpWithEmail()),
        verify: (_) async => verify(
          mockAuthRepository.signUpWithEmail(
            email: Email(tValidEmailString),
            password: Password(tValidPasswordString),
          ),
        ),
      );

      blocTest(
        'should emit [state with isSubmitting and no authResponse, state with showErrorMessages and success authResponse but not isSubmitting] when authentication is successful',
        build: () async => bloc,
        act: (bloc) {
          setUpMockAuthRepositorySignUpWithEmailSuccess();

          return bloc.add(SignInFormEvent.signUpWithEmail());
        },
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: true,
            authResponseOption: none(),
          ),
          SignInFormEventMatcher(
            showErrorMessages: true,
            authResponseOption: some(Right(unit)),
            isSubmitting: false,
          ),
        ],
      );

      blocTest(
        'should emit [state with isSubmitting and no authResponse, state with showErrorMessages and failure authResponse but not isSubmitting] when authentication is unsuccessful',
        build: () async => bloc,
        act: (bloc) {
          setUpMockAuthRepositorySignUpWithEmailFailure();

          return bloc.add(SignInFormEvent.signUpWithEmail());
        },
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: true,
            authResponseOption: none(),
          ),
          SignInFormEventMatcher(
            isSubmitting: false,
            showErrorMessages: true,
            authResponseOption: some(Left(AuthFailure.emailAlreadyInUse())),
          ),
        ],
      );
    });

    group('with invalid Email or Password', () {
      setUp(() {
        bloc.add(SignInFormEvent.emailChanged(tInvalidEmailString));
        bloc.add(SignInFormEvent.passwordChanged(tInvalidPasswordString));
      });

      blocTest(
        'should not make any call to AuthRepository',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signUpWithEmail()),
        verify: (_) async => verifyZeroInteractions(mockAuthRepository),
      );

      blocTest(
        'should emit [state with showErrorMessages but no authResponse and not isSubmitting]',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signUpWithEmail()),
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: false,
            showErrorMessages: true,
            authResponseOption: none(),
          ),
        ],
      );
    });
  });

  group('signInWithEmail Event', () {
    group('with valid Email and Password', () {
      setUp(() {
        bloc.add(SignInFormEvent.emailChanged(tValidEmailString));
        bloc.add(SignInFormEvent.passwordChanged(tValidPasswordString));
      });

      blocTest(
        'should make one call to AuthRepository.signInWithEmail()',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signInWithEmail()),
        verify: (_) async => verify(
          mockAuthRepository.signInWithEmail(
            email: Email(tValidEmailString),
            password: Password(tValidPasswordString),
          ),
        ),
      );

      blocTest(
        'should emit [state with isSubmitting and no authResponse, state with showErrorMessages and success authResponse but not isSubmitting] when authentication is successful',
        build: () async => bloc,
        act: (bloc) {
          setUpMockAuthRepositorySignInWithEmailSuccess();

          return bloc.add(SignInFormEvent.signInWithEmail());
        },
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: true,
            authResponseOption: none(),
          ),
          SignInFormEventMatcher(
            showErrorMessages: true,
            authResponseOption: some(Right(unit)),
            isSubmitting: false,
          ),
        ],
      );

      blocTest(
        'should emit [state with isSubmitting and no authResponse, state with showErrorMessages and failure authResponse but not isSubmitting] when authentication is unsuccessful',
        build: () async => bloc,
        act: (bloc) {
          setUpMockAuthRepositorySignInWithEmailFailure();

          return bloc.add(SignInFormEvent.signInWithEmail());
        },
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: true,
            authResponseOption: none(),
          ),
          SignInFormEventMatcher(
            showErrorMessages: true,
            authResponseOption:
                some(Left(AuthFailure.invalidEmailOrPassword())),
            isSubmitting: false,
          ),
        ],
      );
    });

    group('with invalid Email or Password', () {
      setUp(() {
        bloc.add(SignInFormEvent.emailChanged(tInvalidEmailString));
        bloc.add(SignInFormEvent.passwordChanged(tInvalidPasswordString));
      });

      blocTest(
        'should not make any call to AuthRepository',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signInWithEmail()),
        verify: (_) async => verifyZeroInteractions(mockAuthRepository),
      );

      blocTest(
        'should emit [state with showErrorMessages and authResponse but not isSubmitting]',
        build: () async => bloc,
        act: (bloc) => bloc.add(SignInFormEvent.signInWithEmail()),
        skip: 3,
        expect: [
          SignInFormEventMatcher(
            isSubmitting: false,
            showErrorMessages: true,
            authResponseOption: none(),
          ),
        ],
      );
    });
  });

  group('signInWithGoogle Event', () {
    blocTest(
      'should make one call to AuthRepository.signInWithGoogle()',
      build: () async => bloc,
      act: (bloc) => bloc.add(SignInFormEvent.signInWithGoogle()),
      verify: (_) async => verify(mockAuthRepository.signInWithGoogle()),
    );

    blocTest(
      'should emit [state with isSubmitting and no authResponse, state with success authResponse but not isSubmitting] when authentication is successful',
      build: () async => bloc,
      act: (bloc) {
        setUpMockAuthRepositorySignInWithGoogleSuccess();

        return bloc.add(SignInFormEvent.signInWithGoogle());
      },
      expect: [
        SignInFormEventMatcher(
          isSubmitting: true,
          authResponseOption: none(),
        ),
        SignInFormEventMatcher(
          isSubmitting: false,
          authResponseOption: Some(Right(unit)),
        ),
      ],
    );

    blocTest(
      'should emit [state with isSubmitting and no authResponse, state with failure authResponse but not isSubmitting] when authentication is unsuccessful',
      build: () async => bloc,
      act: (bloc) {
        setUpMockAuthRepositorySignInWithGoogleFailure();

        return bloc.add(SignInFormEvent.signInWithGoogle());
      },
      expect: [
        SignInFormEventMatcher(
          isSubmitting: true,
          authResponseOption: none(),
        ),
        SignInFormEventMatcher(
          isSubmitting: false,
          authResponseOption: Some(Left(AuthFailure.cancelledByUser())),
        ),
      ],
    );
  });
}

class SignInFormEventMatcher extends Matcher {
  Map expected;

  SignInFormEventMatcher({
    Email email,
    Password password,
    bool isSubmitting,
    bool showErrorMessages,
    Option<Either<AuthFailure, Unit>> authResponseOption,
  }) {
    this.expected = {
      'email': email,
      'password': password,
      'isSubmitting': isSubmitting,
      'showErrorMessages': showErrorMessages,
      'authResponseOption': authResponseOption,
    };
  }

  @override
  Description describe(Description description) {
    String expectedAttributes = '';
    expected.entries.forEach((e) {
      expectedAttributes += e.value != null ? '${e.key}: ${e.value}, ' : '';
    });
    return description
        .add('has expected SignInFormState attributes = "$expectedAttributes"');
  }

  @override
  Description describeMismatch(
    actual,
    Description mismatchDescription,
    Map matchState,
    bool verbose,
  ) {
    return mismatchDescription
        .add('has actual SignInFormState attributes = "$actual"');
  }

  @override
  bool matches(actual, Map matchState) {
    actual = actual as SignInFormState;
    return compareIfPresent(actual.email, expected['email']) &&
        compareIfPresent(actual.password, expected['password']) &&
        compareIfPresent(actual.isSubmitting, expected['isSubmitting']) &&
        compareIfPresent(
            actual.showErrorMessages, expected['showErrorMessages']) &&
        compareIfPresent(
            actual.authResponseOption, expected['authResponseOption']);
  }

  bool compareIfPresent(actualValue, expectedValue) =>
      expectedValue != null ? actualValue == expectedValue : true;
}
