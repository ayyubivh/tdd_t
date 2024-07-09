import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/usecase.dart';
import 'package:mash/mash/domain/use_cases/auth/get_user_info_use_case.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetUserInfoUseCase getUserInfoUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    getUserInfoUseCase = GetUserInfoUseCase(mockAuthRepository);
  });

  test(
      'Should get User from the repository when User Repository return data successfully',
      () async {
    //Arrange
    final userInfo = tAuthModel.resTable.first;
    when(mockAuthRepository.getUserInfo()).thenAnswer((_) async => userInfo);

    //Act
    final result = await getUserInfoUseCase.call(NoParams());
    //Assert
    expect(result, userInfo);
    verify(mockAuthRepository.getUserInfo());
    verifyNoMoreInteractions(mockAuthRepository);
  });
}
