import 'package:equatable/equatable.dart';

class WordThoughtsEntity extends Equatable {
  final int? statusCode;
  final String? statusMessage;
  final List<WordTableEntity>? resTable1;
  final List<ThoughtTableEntity>? resTable2;

  const WordThoughtsEntity({
    required this.statusCode,
    required this.statusMessage,
    required this.resTable1,
    required this.resTable2,
  });

  @override
  List<Object?> get props => [statusCode, statusMessage, resTable1, resTable2];
}

class ThoughtTableEntity extends Equatable {
  final String? thoughtId;
  final String? thoughtOfTheDayUrl;
  final String? publishedDate;

  const ThoughtTableEntity({
    this.thoughtId,
    this.thoughtOfTheDayUrl,
    this.publishedDate,
  });

  @override
  List<Object?> get props => [thoughtId, thoughtOfTheDayUrl, publishedDate];
}

class WordTableEntity extends Equatable {
  final String? wordId;
  final String? wordName;
  final String? wordMeaning1;
  final String? wordMeaning2;
  final String? hasImg;
  final dynamic wordImage;
  final String? status;
  final String? compId;
  final String? createdBy;

  const WordTableEntity({
    this.wordId,
    this.wordName,
    this.wordMeaning1,
    this.wordMeaning2,
    this.hasImg,
    this.wordImage,
    this.status,
    this.compId,
    this.createdBy,
  });

  @override
  List<Object?> get props => [
        wordId,
        wordName,
        wordMeaning1,
        wordMeaning2,
        hasImg,
        wordImage,
        status,
        compId,
        createdBy
      ];
}
