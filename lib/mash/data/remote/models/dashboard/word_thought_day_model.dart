import 'package:mash/mash/domain/entities/dashboard/word_thought_entity.dart';

class WordThoughtsModel extends WordThoughtsEntity {
  const WordThoughtsModel({
    required super.statusCode,
    required super.statusMessage,
    required List<WordTableModel>? wordTable,
    required List<ThoughtTableModel>? thoughtTable,
  }) : super(
          resTable1: wordTable,
          resTable2: thoughtTable,
        );

  factory WordThoughtsModel.fromJson(Map<String, dynamic> json) =>
      WordThoughtsModel(
        statusCode: json['statusCode'] as int?,
        statusMessage: json['statusMessage'] as String?,
        wordTable: (json['resTable1'] as List<dynamic>?)
            ?.map((e) => WordTableModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        thoughtTable: (json['resTable2'] as List<dynamic>?)
            ?.map((e) => ThoughtTableModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
}

class ThoughtTableModel extends ThoughtTableEntity {
  const ThoughtTableModel({
    required super.thoughtId,
    required super.thoughtOfTheDayUrl,
    required super.publishedDate,
  });

  factory ThoughtTableModel.fromJson(Map<String, dynamic> json) =>
      ThoughtTableModel(
        thoughtId: json['THOUGHT_ID'] as String?,
        thoughtOfTheDayUrl: json['THOUGHT_OF_THE_DAY_URL'] as String?,
        publishedDate: json['PUBLISHED_DATE'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'THOUGHT_ID': thoughtId,
        'THOUGHT_OF_THE_DAY_URL': thoughtOfTheDayUrl,
        'PUBLISHED_DATE': publishedDate,
      };
}

class WordTableModel extends WordTableEntity {
  const WordTableModel({
    required super.wordId,
    required super.wordName,
    required super.wordMeaning1,
    required super.wordMeaning2,
    required super.hasImg,
    required super.wordImage,
    required super.status,
    required super.compId,
    required super.createdBy,
  });

  factory WordTableModel.fromJson(Map<String, dynamic> json) => WordTableModel(
        wordId: json['WORD_ID'] as String?,
        wordName: json['WORD_NAME'] as String?,
        wordMeaning1: json['WORD_MEANING1'] as String?,
        wordMeaning2: json['WORD_MEANING2'] as String?,
        hasImg: json['HAS_IMG'] as String?,
        wordImage: json['WORD_IMAGE'],
        status: json['STATUS'] as String?,
        compId: json['COMP_ID'] as String?,
        createdBy: json['CREATED_BY'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'WORD_ID': wordId,
        'WORD_NAME': wordName,
        'WORD_MEANING1': wordMeaning1,
        'WORD_MEANING2': wordMeaning2,
        'HAS_IMG': hasImg,
        'WORD_IMAGE': wordImage,
        'STATUS': status,
        'COMP_ID': compId,
        'CREATED_BY': createdBy,
      };
}
