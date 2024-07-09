import 'package:flutter_test/flutter_test.dart';
import 'package:mash/mash/data/local/models/dash_board_hive_model.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';
import '../../../../fixture/constant_objects.dart';

void main() {
  group('WordThoughtsHiveModel', () {
    test('should be a HiveObject', () {
      expect(twordThoughtsHiveModel, isA<WordThoughtsHiveModel>());
    });
    test(
        'fromEntity should convert WordThoughtsEntity to WordThoughtsHiveModel',
        () {
      // Arrange
      const entity = WordThoughtsEntity(
        statusCode: 200,
        statusMessage: 'SUCCESS',
        resTable1: [
          WordTableEntity(
            wordId: '1',
            wordName: 'TestWord',
            wordMeaning1: 'Meaning 1',
            wordMeaning2: 'Meaning 2',
            hasImg: '0',
            wordImage: null,
            status: '1',
            compId: '1',
            createdBy: 'John Doe',
          ),
        ],
        resTable2: [
          ThoughtTableEntity(
            thoughtId: '1',
            thoughtOfTheDayUrl: 'https://example.com',
            publishedDate: '2024-05-10',
          ),
        ],
      );

      // Act
      final model = WordThoughtsHiveModel.fromEntity(entity);

      // Assert
      expect(model, twordThoughtsHiveModel);
    });
  });
}
