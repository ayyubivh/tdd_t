import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_models.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_entity.dart';

import '../../../../../../fixture/constant_objects.dart';
import '../../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass of syllabus entity', () {
    expect(tSyllabusModel, isA<SyllabusEntity>());
  });

  group('from json and to json', () {
    test('''Should successfully deserialize a JSON map into a syllabus model
          object and ensure that the resulting 
          object matches the expected TsyllabusModel''', () {
      //Arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('academic/syllabus/syllabus_response.json'));

      //Act
      final result = SyllabusModel.fromJson(jsonMap);

      //Assert
      expect(result, equals(tSyllabusModel));
    });
    test(
        'should return a json map of syllabus request containing a proper data',
        () {
      //Arrange
      final result = tSyllabusTermsRequest.toJson();
      //Act
      final Map<String, dynamic> expectedJsonMap = {
        'P_COMP_ID': '200001',
        'P_ACAD_ID': '87',
        'P_CLASS_ID': '152'
      };
      //Assert
      expect(result, expectedJsonMap);
    });
  });
}
