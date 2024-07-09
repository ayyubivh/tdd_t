import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/notice/notice_pop_up_model.dart';

import '../../../../../fixture/constant_objects.dart';
import '../../../../../fixture/fixtures_readers.dart';

void main() {
  group('NoticePopUpModel', () {
    test('fromJson() should parse JSON correctly', () {
      // Arrange
      final Map<String, dynamic> jsonMap =
          json.decode(fixture('notice/notice_pop_up_response.json'));

      // Act
      final noticePopUpModel = NoticePopUpModel.fromJson(jsonMap);

      // Assert
      expect(noticePopUpModel, equals(tNoticePopUpModel));
    });
    test(
        'should return a json map of wordthought request containing proper data',
        () {
      // Arrange
      final result = tWordThoughtRequest.toJson();
      // Act
      final Map<String, dynamic> expectedJsonMap = {
        "P_ACADEMIC_ID": "87",
        "P_COMP_ID": "200001"
      };
      // Assert

      expect(result, equals(expectedJsonMap));
    });
  });
}
