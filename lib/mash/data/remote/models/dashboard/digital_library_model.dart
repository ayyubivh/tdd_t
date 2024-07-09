import '../../../../domain/entities/dashboard/digital_library_entity.dart';

class DigitalLibraryModel extends DigitalLibraryEntity {
  const DigitalLibraryModel(
      {super.contentId,
      super.contentName,
      super.contentDesc,
      super.typeId,
      super.dgCatName,
      super.dgSubCatName,
      super.coverImg,
      super.docName,
      super.userType,
      super.isActive,
      super.createdBy,
      super.createdOn,
      super.lastModifyBy,
      super.lastModifiedOn,
      super.authorName,
      super.dateOfPublish,
      super.languageName,
      super.dgTypeName,
      super.publisher,
      super.likeStatus,
      super.docExt,
      super.bookMarkStatus,
      super.researchId,
      super.researchName,
      super.researchDesc,
      super.docImg,
      super.urlLink,
      super.forParent,
      super.forStudent,
      super.forStaff,
      super.compId,
      super.usrActivityId,
      super.usrActivityDesc,
      super.activityImg,
      super.fileNm,
      super.userName,
      super.propic,
      super.classNm,
      super.divNm,
      super.academicId,
      super.dtt,
      super.dttchar,
      super.isDeletable,
      super.deptNm,
      super.activityImgExtn});

  factory DigitalLibraryModel.fromJson(Map<String, dynamic> json) {
    return DigitalLibraryModel(
      contentId: json['CONTENT_ID'],
      contentName: json['CONTENT_NAME'],
      contentDesc: json['CONTENT_DESC'],
      typeId: json['TYPE_ID'],
      dgCatName: json['DG_CAT_NAME'],
      dgSubCatName: json['DG_SUB_CAT_NAME'],
      coverImg: json['COVER_IMG'],
      docName: json['DOC_NAME'],
      userType: json['USER_TYPE'],
      isActive: json['ISACTIVE'],
      createdBy: json['CREATED_BY'],
      createdOn: json['CREATED_ON'],
      lastModifyBy: json['LAST_MODIFY_BY'] ?? '',
      lastModifiedOn: json['LAST_MODIFIED_ON'] ?? '',
      authorName: json['AUTHOR_NAME'],
      dateOfPublish: json['DATEOFPUBLISH'],
      languageName: json['LANGUAGE_NAME'],
      dgTypeName: json['DG_TYPE_NAME'],
      publisher: json['PUBLISHER'],
      docExt: json['DOC_EXTN'],
      likeStatus: json['LIKE_STATUS'],
      bookMarkStatus: json['BOOKMARK_STATUS'],
      researchId: json['RESEARCH_ID'],
      researchName: json['RESEARCH_NAME'],
      researchDesc: json['RESEARCH_DESC'],
      docImg: json['DOC_IMG'],

      urlLink: json['URL_LINK'],
      forParent: json['FOR_PARENT'],
      forStudent: json['FOR_STUDENT'],
      forStaff: json['FOR_STAFF'],
      compId: json['COMPID'],
      usrActivityId: json['USR_ACTIVITY_ID'],
      usrActivityDesc: json['USR_ACTIVITY_DESC'],
      activityImg: json['ACTIVITY_IMG'],
      fileNm: json['FILE_NM'],

      userName: json['USER_NAME'],
      propic: json['PROPIC'],

      classNm: json['CLASS_NM'],
      divNm: json['DIV_NM'],
      academicId: json['ACADEMIC_ID'],
      dtt: json['DTT'],
      dttchar: json['DTTCHAR'],
      // tymchar: json['TYMCHAR'],
      isDeletable: json['IS_DELETABLE'],
      deptNm: json['DEPT_NM'],
      activityImgExtn: json['ACTIVITY_IMG_EXTN'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'CONTENT_ID': contentId,
      'CONTENT_NAME': contentName,
      'CONTENT_DESC': contentDesc,
      'TYPE_ID': typeId,
      'DG_CAT_NAME': dgCatName,
      'DG_SUB_CAT_NAME': dgSubCatName,
      'COVER_IMG': coverImg,
      'DOC_NAME': docName,
      'USER_TYPE': userType,
      'ISACTIVE': isActive,
      'CREATED_BY': createdBy,
      'CREATED_ON': createdOn,
      'LAST_MODIFY_BY': lastModifyBy,
      'LAST_MODIFIED_ON': lastModifiedOn,
      'AUTHOR_NAME': authorName,
      'DATEOFPUBLISH': dateOfPublish,
      'LANGUAGE_NAME': languageName,
      'DG_TYPE_NAME': dgTypeName,
      'PUBLISHER': publisher,
      'DOC_EXTN': docExt,
      'LIKE_STATUS': likeStatus,
      'BOOKMARK_STATUS': bookMarkStatus,
      'RESEARCH_ID': researchId,
      'RESEARCH_NAME': researchName,
      'RESEARCH_DESC': researchDesc,
      'DOC_IMG': docImg,
      'URL_LINK': urlLink,
      'FOR_PARENT': forParent,
      'FOR_STUDENT': forStudent,
      'FOR_STAFF': forStaff,
      'COMPID': compId,
    };
  }
}