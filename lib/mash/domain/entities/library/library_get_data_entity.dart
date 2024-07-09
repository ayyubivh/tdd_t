


import 'package:equatable/equatable.dart';

class RequiredPhysicalLibraryEntity extends Equatable{

  final int statusCode;
  final String statusMessage;
  final List<Author> authors;
  final List<Language> languages;

  const RequiredPhysicalLibraryEntity({required this.statusCode, required this.statusMessage, required this.authors, required this.languages});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class Author {
  final String authorId;
  final String authorName;

  Author({
    required this.authorId,
    required this.authorName,
  });

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(
      authorId: json['AUTHOR_ID'],
      authorName: json['AUTHOR_NAME'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'AUTHOR_ID': authorId,
      'AUTHOR_NAME': authorName,
    };
  }
}

class Language {
  final String languageId;
  final String languageName;

  Language({
    required this.languageId,
    required this.languageName,
  });

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(
      languageId: json['LANGUAGE_ID'],
      languageName: json['LANG'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'LANGUAGE_ID': languageId,
      'LANG': languageName,
    };
  }
}