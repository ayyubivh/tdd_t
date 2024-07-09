import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/add_on/add_on_model.dart';
import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';

import '../../../../../fixture/constant_objects.dart';
import '../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be sublass of addon entity',
      () => expect(tAddOnModel, isA<AddOnEntity>()));
  group('addon model', () {
    test('''Should successfully deserialize a JSON map into a addOnModel
          object and ensure that the resulting 
          object matches the expected tAddOnModel''', () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('home/add_on_response.json'));
      //act
      final result = AddOnModel.fromJson(jsonMap);

      //assert
      expect(result, equals(tAddOnModel));
    });
    test('shold return a  json map of auth request containing properdata', () {
      //Arrange
      final result = tAddOnRequest.toJson();
      //Act
      final Map<String, dynamic> expectedJsonMap = {
        "P_COMP_ID": 200001,
        "P_CATGORY_ID": 1,
        "p_CATEGORY_TYPE": 0
      };
      //Assert
      expect(result, expectedJsonMap);
    });
  });
}
