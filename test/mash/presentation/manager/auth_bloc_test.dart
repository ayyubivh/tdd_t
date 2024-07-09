// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mash/mash/domain/use_cases/auth/login_use_case.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mash/core/response_classify.dart';
// import 'package:mash/mash/presentation/manager/auth_bloc/auth_bloc.dart';

// import '../../fixture/constant_objects.dart';
// import '../../helpers/test_helpers.mocks.dart';

// void main() {
//   group('AuthBloc', () {
//     late AuthBloc authBloc;
//     late MockLoginUseCase mockLoginUseCase;
//     setUp(() {
//       mockLoginUseCase = MockLoginUseCase();
//       authBloc = AuthBloc();
//     });

//     blocTest<AuthBloc, AuthState>(
//       'emits the correct states when the login event is added',
//       build: () {
//         when(mockLoginUseCase(tLoginRequest))
//             .thenAnswer((_) async => tAuthModel);
//         return AuthBloc();
//       },
//       act: (bloc) => bloc.add(AuthEvent.login(
//         loginRequest: tLoginRequest,
//         context: MockBuildContext(),
//       )),
//       expect: () => [
//         AuthState(
//           loginResponse: ResponseClassify.loading(),
//           userDetails: null,
//           signOutResponse: ResponseClassify.initial(),
//         ),
//         AuthState(
//           loginResponse: ResponseClassify.completed(tAuthModel),
//           userDetails:
//               tAuthModel.resTable.isNotEmpty ? tAuthModel.resTable.first : null,
//           signOutResponse: ResponseClassify.initial(),
//         ),
//       ],
//     );
//   });
// }
