import 'package:mash/mash/domain/entities/add_on/add_on_detail_entity.dart';

class AddOnDetailModel extends AddOnDetailEntity {
  const AddOnDetailModel({required super.subCategoryId,
    required super.subCategoryName,
    required super.categoryId,
    required super.description,
    required super.imgStatus,
    required super.imgUrl,
    required super.links});

  factory AddOnDetailModel.fromJson(Map<String, dynamic> json) {
    return AddOnDetailModel(
      subCategoryId: json['SUB_CATEGORY_ID'].toString() ?? '',
      subCategoryName: json['SUB_CATEGORY_NAME'] ?? '',
      categoryId: json['CATEGORY_ID'].toString() ?? '',
      description: json['DESCRIPTION'] ?? '',
      imgStatus: json['IMG_STATUS'].toString() ?? '',
      imgUrl: json['IMG_URL'] ?? '',
      links: json['LINKS'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'SUB_CATEGORY_ID': subCategoryId,
      'SUB_CATEGORY_NAME': subCategoryName,
      'CATEGORY_ID': categoryId,
      'DESCRIPTION': description,
      'IMG_STATUS': imgStatus,
      'IMG_URL': imgUrl,
      'LINKS': links,
    };
  }
}
