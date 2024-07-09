

import 'package:mash/mash/domain/entities/library/library_get_data_entity.dart';

class RequiredLibraryDataModel extends RequiredPhysicalLibraryEntity{
  const RequiredLibraryDataModel({required super.statusCode, required super.statusMessage, required super.authors, required super.languages});


  factory RequiredLibraryDataModel.fromJson(Map<String, dynamic> json) {
    var authorList = json['resTable1'] as List;
    var languageList = json['resTable2'] as List;

    return RequiredLibraryDataModel(
      statusCode: json['statusCode'],
      statusMessage: json['statusMessage'],
      authors: authorList.map((author) => Author.fromJson(author)).toList(),
      languages: languageList.map((lang) => Language.fromJson(lang)).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'statusCode': statusCode,
      'statusMessage': statusMessage,
      'resTable1': authors.map((author) => author.toJson()).toList(),
      'resTable2': languages.map((lang) => lang.toJson()).toList(),
    };
  }
}