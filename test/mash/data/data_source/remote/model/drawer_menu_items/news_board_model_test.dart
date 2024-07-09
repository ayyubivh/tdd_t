import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/remote/models/drawer_menu_items/news_board_model.dart';
import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';
import '../../../../../fixture/constant_objects.dart';
import '../../../../../fixture/fixtures_readers.dart';

void main() {
  test('should be a subclass newsboard entity', () {
    //assert
    expect(tNewsBoardModel, isA<NewsBoardEntity>());
  });
  group('testing from json and to to json', () {
    test('''Should successfully deserialize a JSON map into a NewsBoardModel
            object and ensure that the resulting 
            object matches the expected tNewsBoardModel''', () {
      //arrange
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('drawer_menu_item/news_board_response.json'));
      //act
      final result = NewsBoardModel.fromJson(jsonMap);
      //assert
      expect(result, tNewsBoardModel);
    });
  });
  test('should return a json map of news board request containing proper data',
      () {
    //arrange
    final result = tNewsBoardRequest.toJson();

    //act
    final Map<String, dynamic> expectedJsonMap = {
      'P_COMP_ID': 'pCompId',
      'P_USER_TYPE': 'usertype',
      'P_SEARCH_KEY': 'pSearchKey',
      'P_OFFEST': 'pOffset',
      'P_LIMI': 'pLimit'
    };

    //assert
    expect(result, expectedJsonMap);
  });
}
