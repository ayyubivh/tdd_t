import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/auth/auth_response_model.dart';
import 'package:mash/mash/domain/entities/auth/auth_response_entity.dart';

import '../../../../../fixture/constant_objects.dart';
import '../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass of auth entity', () {
    //assert
    expect(tAuthModel, isA<AuthResponseEntity>());
  });

  group('from json and to json', () {
    test('''Should successfully deserialize a JSON map into a AuthUserModel
          object and ensure that the resulting 
          object matches the expected tAuthUserModel''', () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('auth/auth_response.json'));
      //act
      final result = AuthResponseModel.fromJson(jsonMap);

      //assert
      expect(result, equals(tAuthModel));
    });

    test('should return a json map of auth request containing proper data', () {
      // Arrange
      final result = tLoginRequest.toJson();
      // Act
      final Map<String, dynamic> expectedJsonMap = {
        'userId': 'user id',
        'password': 'password',
        'deviceId': '123',
        'appType': 'appType',
      };

      // Assert

      expect(result, equals(expectedJsonMap));
    });
  });
}
