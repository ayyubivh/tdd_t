


import 'package:mash/mash/domain/entities/library/physical_library_entity.dart';

class PhysicalLibraryModel extends PhysicalLibraryEntity{
  PhysicalLibraryModel({required super.reqStatus, required super.bookDtlsId, required super.title, required super.bookDescription, required super.coverImg, required super.noOfCopies, required super.bookSource, required super.bookCost, required super.remarks, required super.distributor, required super.edition, required super.volume, required super.isbn, required super.publishedDate, required super.uploadDate, required super.noOfPages, required super.translationId, required super.languageId, required super.lang, required super.categoryId, required super.subCatId, required super.authorId, required super.authorName, required super.publisherId, required super.compId, required super.status, required super.createdBy, required super.createdOn, required super.modifiedBy, required super.modifiedOn});

  factory PhysicalLibraryModel.fromJson(Map<String, dynamic> json) {
    return PhysicalLibraryModel(
      bookDtlsId: json['BOOK_DTLS_ID'],
      title: json['TITLE'],
      bookDescription: json['BOOK_DESCRIPTION'],
      coverImg: json['COVER_IMG'],
      noOfCopies: json['NO_OF_COPIES'],
      bookSource: json['BOOK_SOURCE'],
      bookCost: json['BOOK_COST'],
      remarks: json['REMARKS'],
      distributor: json['DISTRIBUTOR'],
      edition: json['EDITION'],
      volume: json['VOLUME'],
      isbn: json['ISBN'],
      publishedDate: json['PUBLISHED_DATE'],
      uploadDate: json['UPLOAD_DATE'],
      noOfPages: json['NO_OF_PAGES'],
      translationId: json['TRANSLATION_ID'],
      languageId: json['LANGUAGE_ID'],
      lang: json['LANG'],
      categoryId: json['CATEGORY_ID'],
      subCatId: json['SUB_CAT_ID'],
      authorId: json['AUTHOR_ID'],
      authorName: json['AUTHOR_NAME'],
      publisherId: json['PUBLISHER_ID'],
      compId: json['COMP_ID'],
      status: json['STATUS'],
      createdBy: json['CREATED_BY'],
      createdOn: json['CREATED_ON'],
      modifiedBy: json['MODIFIED_BY'],
      modifiedOn: json['MODIFIED_ON'],
      reqStatus:  json['REQ_STATUS'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'BOOK_DTLS_ID': bookDtlsId,
      'TITLE': title,
      'BOOK_DESCRIPTION': bookDescription,
      'COVER_IMG': coverImg,
      'NO_OF_COPIES': noOfCopies,
      'BOOK_SOURCE': bookSource,
      'BOOK_COST': bookCost,
      'REMARKS': remarks,
      'DISTRIBUTOR': distributor,
      'EDITION': edition,
      'VOLUME': volume,
      'ISBN': isbn,
      'PUBLISHED_DATE': publishedDate,
      'UPLOAD_DATE': uploadDate,
      'NO_OF_PAGES': noOfPages,
      'TRANSLATION_ID': translationId,
      'LANGUAGE_ID': languageId,
      'LANG': lang,
      'CATEGORY_ID': categoryId,
      'SUB_CAT_ID': subCatId,
      'AUTHOR_ID': authorId,
      'AUTHOR_NAME': authorName,
      'PUBLISHER_ID': publisherId,
      'COMP_ID': compId,
      'STATUS': status,
      'CREATED_BY': createdBy,
      'CREATED_ON': createdOn,
      'MODIFIED_BY': modifiedBy,
      'MODIFIED_ON': modifiedOn,
      'REQ_STATUS': reqStatus
    };
  }
}