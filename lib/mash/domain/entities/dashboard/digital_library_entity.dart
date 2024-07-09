import 'package:equatable/equatable.dart';

class DigitalLibraryEntity extends Equatable {
  final String? contentId;
  final String? contentName;
  final String? contentDesc;
  final String? typeId;
  final String? dgCatName;
  final String? dgSubCatName;
  final String? coverImg;
  final String? docName;
  final String? userType;
  final String? isActive;
  final String? createdBy;
  final String? createdOn;
  final String? lastModifyBy;
  final String? lastModifiedOn;
  final String? authorName;
  final String? dateOfPublish;
  final String? languageName;
  final String? dgTypeName;
  final String? publisher;
  final String? likeStatus;
  final String? bookMarkStatus;
  final String? docExt;
  final String? researchId;
  final String? researchName;
  final String? researchDesc;
  final String? docImg;
  final String? urlLink;
  final String? forParent;
  final String? forStudent;
  final String? forStaff;
  final String? compId;

  final String? usrActivityId;
  final String? usrActivityDesc;
  final String? activityImg;
  final String? fileNm;

  final String? userName;
  final String? propic;
  final String? userId;
  final String? classNm;
  final String? divNm;
  final String? academicId;
  final String? dtt;
  final String? dttchar;
  final String? tymchar;
  final String? isDeletable;
  final String? deptNm;
  final String? activityImgExtn;

  const DigitalLibraryEntity({
    this.contentId,
    this.contentName,
    this.contentDesc,
    this.typeId,
    this.dgCatName,
    this.dgSubCatName,
    this.coverImg,
    this.docName,
    this.userType,
    this.isActive,
    this.createdBy,
    this.createdOn,
    this.lastModifyBy,
    this.lastModifiedOn,
    this.authorName,
    this.dateOfPublish,
    this.languageName,
    this.dgTypeName,
    this.publisher,
    this.likeStatus,
    this.bookMarkStatus,
    this.docExt,
    this.researchId,
    this.researchName,
    this.researchDesc,
    this.docImg,
    this.urlLink,
    this.forParent,
    this.forStudent,
    this.forStaff,
    this.compId,
    this.usrActivityId,
    this.usrActivityDesc,
    this.activityImg,
    this.fileNm,
    this.userName,
    this.propic,
    this.userId,
    this.classNm,
    this.divNm,
    this.academicId,
    this.dtt,
    this.dttchar,
    this.tymchar,
    this.isDeletable,
    this.deptNm,
    this.activityImgExtn,
  });

  @override
  List<Object?> get props => [contentId];
}
