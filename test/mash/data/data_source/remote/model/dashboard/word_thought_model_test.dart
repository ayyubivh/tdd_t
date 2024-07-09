import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/dashboard/word_thought_day_model.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

import '../../../../../fixture/constant_objects.dart';
import '../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass of word thougth entity', () {
    //assert
    expect(tWordThoughtModel, isA<WordThoughtsEntity>());
  });
  group('testing from json and to json', () {
    test('''Should successfully deserialize a JSON map into a WordThoughtModel
            object and ensure that the resulting 
            object matches the expected tWordThoughtModel''', () {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('dashboard/word_thought_response.json'));
      //act
      final result = WordThoughtsModel.fromJson(jsonMap);
      //assert
      expect(result, tWordThoughtModel);
    });
    test(
        'should return a json map of word thought request containing proper data',
        () {
      //arrange
      final result = tWordThoughtRequest.toJson();

      //act
      final Map<String, dynamic> expectedJsonMap = {
        "P_ACADEMIC_ID": "87",
        "P_COMP_ID": "200001"
      };

      //assert
      expect(result, expectedJsonMap);
    });
  });
}
