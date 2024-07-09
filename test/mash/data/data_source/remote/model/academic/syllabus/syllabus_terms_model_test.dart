import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/academic/syllabus/syllabus_term_model.dart';
import 'package:mash/mash/domain/entities/syllabus/syllabus_term_entity.dart';
import '../../../../../../fixture/constant_objects.dart';
import '../../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass of syllabus terms entity', () {
    expect(tSyllabusTermsModel, isA<SyllabusTermEntity>());
  });

  group('from json and to json', () {
    test(
        '''Should successfully deserialize a JSON map into a syllabusterms model
          object and ensure that the resulting 
          object matches the expected TsyllabuTermsModel''', () {
      //Arrange
      final Map<String, dynamic> jsonMap = json
          .decode(fixture('academic/syllabus/syllabus_terms_response.json'));

      //Act
      final result = SyllabusTermModel.fromJson(jsonMap);

      //Assert
      expect(result, equals(tSyllabusTermsModel));
    });
    test(
        'should return a json map of syllabusTerms request containing a proper data',
        () {
      //Arrange
      final result = tSyllabusTermsRequest.toJson();

      //Act
      final Map<String, dynamic> expectedJsonMap = {
        "P_COMP_ID": '200001',
        "P_ACAD_ID": '87',
        "P_CLASS_ID": '152'
      };
      //Assert
      expect(result, expectedJsonMap);
    });
  });
}
