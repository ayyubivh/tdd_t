import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/domain/use_cases/auth/save_user_info_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late SaveUserInfoUseCase saveUserInfoUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    saveUserInfoUseCase = SaveUserInfoUseCase(mockAuthRepository);
  });

  test('Should save user info when SaveUserInfoUseCase is called', () async {
    // Arrange
    when(mockAuthRepository.saveUserInfo(tLoginLocalModel))
        .thenAnswer((_) async => Future<void>.value);

    // Act
    await saveUserInfoUseCase.call(tLoginLocalModel);

    // Assert
    verify(mockAuthRepository.saveUserInfo(tLoginLocalModel)).called(1);
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
