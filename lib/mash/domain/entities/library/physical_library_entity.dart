

import 'package:equatable/equatable.dart';

class PhysicalLibraryEntity extends Equatable{
  final String bookDtlsId;
  final String title;
  final String bookDescription;
  final String coverImg;
  final String noOfCopies;
  final String bookSource;
  final String bookCost;
  final String remarks;
  final String distributor;
  final String edition;
  final String volume;
  final String isbn;
  final String publishedDate;
  final String uploadDate;
  final String noOfPages;
  final String translationId;
  final String languageId;
  final String lang;
  final String categoryId;
  final String subCatId;
  final String authorId;
  final String authorName;
  final String publisherId;
  final String compId;
  final String status;
  final String createdBy;
  final String createdOn;
  final String modifiedBy;
  final String modifiedOn;
  final String reqStatus;

  PhysicalLibraryEntity({required this.reqStatus,required this.bookDtlsId, required this.title, required this.bookDescription, required this.coverImg, required this.noOfCopies, required this.bookSource, required this.bookCost, required this.remarks, required this.distributor, required this.edition, required this.volume, required this.isbn, required this.publishedDate, required this.uploadDate, required this.noOfPages, required this.translationId, required this.languageId, required this.lang, required this.categoryId, required this.subCatId, required this.authorId, required this.authorName, required this.publisherId, required this.compId, required this.status, required this.createdBy, required this.createdOn, required this.modifiedBy, required this.modifiedOn});

  @override
  // TODO: implement props
  List<Object?> get props => [
    bookDtlsId,
    title,
    bookDescription,
    coverImg,
    noOfCopies,
    bookSource,
    bookCost,
    remarks,
    distributor,
    edition,
    volume,
    isbn,
    publishedDate,
    uploadDate,
    noOfPages,
    translationId,
    languageId,
    lang,
    categoryId,
    subCatId,
    authorId,
    authorName,
    publisherId,
    compId,
    status,
    createdBy,
    createdOn,
    modifiedBy,
    modifiedOn,
    reqStatus
  ];
  }