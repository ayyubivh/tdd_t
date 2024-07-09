import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';
import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
  });

  const response = AuthResponseEntity(
    statusMessage: '',
    resTable: [],
    statusCode: 100,
    token: '',
  );

  test('should get the login response from the repository', () async {
    // Arrange
    when(mockAuthRepository.login(tLoginRequest))
        .thenAnswer((_) async => response);

    // Act
    final result = await loginUseCase.call(tLoginRequest);

    // Assert
    expect(result, response);
    verify(mockAuthRepository.login(tLoginRequest)).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
