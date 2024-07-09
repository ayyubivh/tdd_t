import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:mash/core/custom_exception.dart';
import 'package:mash/mash/data/remote/data_sources/drawer_menu_items_remote_data_source.dart';
import 'package:mash/mash/data/remote/routes/app_remote_routes.dart';
import 'package:mockito/mockito.dart';

import '../../../fixture/constant_objects.dart';
import '../../../fixture/fixtures_readers.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late MockApiProvider mockApiProvider;
  late DrawerMenuItemsRemoteDataSourceImpl dataSource;
  setUp(() {
    mockApiProvider = MockApiProvider();
    dataSource =
        DrawerMenuItemsRemoteDataSourceImpl(apiProvider: mockApiProvider);
  });
  group('get news board', () {
    test('should perform a POST request to the correct url', () async {
      //Arrange
      const expectedUrl = AppRemoteRoutes.newsBoard;
      final newsBoardModelJson =
          jsonDecode(fixture('drawer_menu_item/news_board_response.json'));

      final fakeResponse = {
        "statusCode": 200,
        "statusMessage": "SUCCESS",
        "resTable": [
          newsBoardModelJson,
        ]
      };
      when(mockApiProvider.post(expectedUrl, tNewsBoardRequest.toJson()))
          .thenAnswer((_) async => fakeResponse);

      //Act
      final result = await dataSource.getNewsBoard(tNewsBoardRequest);

      //Assert
      expect(result, [tNewsBoardModel]);
    });
    test('should throw a serverfailure on non-200 status code', () {
      // Arrange
      const expectedUrl = AppRemoteRoutes.newsBoard;

      when(mockApiProvider.get(expectedUrl, body: tNewsBoardRequest.toJson()))
          .thenThrow(FetchDataException('test error found'));

      // Act
      final result = dataSource.getNewsBoard(tNewsBoardRequest);

      // Assert
      expect(result, throwsA(isA<FetchDataException>()));
    });
  });
}
