import 'package:mash/mash/domain/entities/drawer_menu_items/news_board_entity.dart';

class NewsBoardModel extends NewsBoardEntity {
  const NewsBoardModel({
    required super.compId,
    required super.content,
    required super.ext,
    required super.coverPage,
    required super.createdBy,
    required super.description,
    required super.newsId,
    required super.newsDate,
    required super.newsTitle,
    required super.userType,
    required super.allS,
    required super.alumni,
    required super.parent,
    required super.staff,
    required super.student,
    required super.category,
    required super.newStatus,
  });
  factory NewsBoardModel.fromJson(Map<String, dynamic> json) {
    return NewsBoardModel(
      compId: json['COMP_ID'],
      content: json['CONTENT'],
      ext: json['EXT'],
      coverPage: json['COVERPAGE'],
      createdBy: json['CREATED_BY'],
      description: json['DESCRIPTION'],
      newsId: json['NEWS_ID'],
      newsDate: json['NEWS_DATE'],
      newsTitle: json['NEWS_TITLE'],
      userType: json['USERTYPE'],
      allS: json['ALL_S'],
      alumni: json['ALUMNI'],
      parent: json['PARENT'],
      staff: json['STAFF'],
      student: json['STUDENT'],
      category: json['CATAGORY'],
      newStatus: json['NEWSTATUS'],
    );
  }
}
