import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/use_cases/auth/sign_out_use_case.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late SignOutUseCase signOutUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    signOutUseCase = SignOutUseCase(mockAuthRepository);
  });

  test('Should save user info when Sign out use case is called', () async {
    // Arrange
    when(mockAuthRepository.signOut())
        .thenAnswer((_) async => Future<void>.value);

    // Act
    await signOutUseCase.call(NoParams());

    // Assert
    verify(mockAuthRepository.signOut()).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
