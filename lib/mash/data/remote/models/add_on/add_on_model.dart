import 'package:mash/mash/domain/entities/add_on/add_on_entity.dart';

class AddOnModel extends AddOnEntity {
  const AddOnModel({
    required super.subCategoryId,
    required super.subCategoryName,
    required super.categoryId,
    required super.description,
    required super.imgStatus,
    required super.imgUrl,
    required super.links,
  });
  factory AddOnModel.fromJson(Map<String, dynamic> json) {
    return AddOnModel(
      subCategoryId: json['SUB_CATEGORY_ID'],
      subCategoryName: json['SUB_CATEGORY_NAME'],
      categoryId: json['CATEGORY_ID'],
      description: json['DESCRIPTION'],
      imgStatus: json['IMG_STATUS'],
      imgUrl: json['IMG_URL'],
      links: json['LINKS'],
    );
  }
}
