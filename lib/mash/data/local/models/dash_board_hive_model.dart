import 'package:hive/hive.dart';
import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

part 'dash_board_hive_model.g.dart';

@HiveType(typeId: 1)
class WordThoughtsHiveModel extends WordThoughtsEntity {
  @override
  @HiveField(0)
  final int? statusCode;

  @override
  @HiveField(1)
  final String? statusMessage;

  @HiveField(2)
  final List<WordTableHiveModel> wordTable;

  @HiveField(3)
  final List<ThoughtTableHiveModel> thoughtTable;

  const WordThoughtsHiveModel({
    required this.statusCode,
    required this.statusMessage,
    required this.wordTable,
    required this.thoughtTable,
  }) : super(
          statusCode: statusCode,
          statusMessage: statusMessage,
          resTable1: wordTable,
          resTable2: thoughtTable,
        );
  factory WordThoughtsHiveModel.fromEntity(WordThoughtsEntity entity) =>
      WordThoughtsHiveModel(
        statusCode: entity.statusCode,
        statusMessage: entity.statusMessage,
        wordTable: List<WordTableHiveModel>.from(
          entity.resTable1!.map(
            (e) => WordTableHiveModel(
              compId: e.compId ?? "",
              createdBy: e.createdBy ?? "",
              hasImg: e.hasImg ?? "",
              status: e.status ?? "",
              wordId: e.wordId ?? "",
              wordImage: e.wordImage,
              wordMeaning1: e.wordMeaning1 ?? "",
              wordMeaning2: e.wordMeaning2 ?? "",
              wordName: e.wordName ?? "",
            ),
          ),
        ),
        thoughtTable: List<ThoughtTableHiveModel>.from(
          entity.resTable2!.map(
            (e) => ThoughtTableHiveModel(
              thoughtId: e.thoughtId ?? "",
              thoughtOfTheDayUrl: e.thoughtOfTheDayUrl ?? "",
              publishedDate: e.publishedDate ?? "",
            ),
          ),
        ),
      );
}

@HiveType(typeId: 2)
class ThoughtTableHiveModel extends ThoughtTableEntity {
  @override
  @HiveField(0)
  final String thoughtId;

  @override
  @HiveField(1)
  final String thoughtOfTheDayUrl;

  @override
  @HiveField(2)
  final String publishedDate;

  const ThoughtTableHiveModel(
      {required this.thoughtId,
      required this.thoughtOfTheDayUrl,
      required this.publishedDate})
      : super(
          publishedDate: publishedDate,
          thoughtId: thoughtId,
          thoughtOfTheDayUrl: thoughtOfTheDayUrl,
        );
}

@HiveType(typeId: 3)
class WordTableHiveModel extends WordTableEntity {
  @override
  @HiveField(0)
  final String wordId;

  @override
  @HiveField(1)
  final String wordName;

  @override
  @HiveField(2)
  final String wordMeaning1;

  @override
  @HiveField(3)
  final String wordMeaning2;

  @override
  @HiveField(4)
  final String hasImg;

  @override
  @HiveField(5)
  final dynamic wordImage;

  @override
  @HiveField(6)
  final String status;

  @override
  @HiveField(7)
  final String compId;

  @override
  @HiveField(8)
  final String createdBy;

  const WordTableHiveModel({
    required this.wordId,
    required this.wordName,
    required this.wordMeaning1,
    required this.wordMeaning2,
    required this.hasImg,
    required this.wordImage,
    required this.status,
    required this.compId,
    required this.createdBy,
  }) : super(
            compId: compId,
            createdBy: createdBy,
            hasImg: hasImg,
            status: status,
            wordId: wordId,
            wordImage: wordImage,
            wordMeaning1: wordMeaning1,
            wordMeaning2: wordMeaning2,
            wordName: wordName);
}
