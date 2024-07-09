import 'package:mash/mash/domain/entities/add_on/get_add_on_entity.dart';

class GetAddOnModel extends GetAddOnEntity {
  const GetAddOnModel(
      {required super.categoryId,
      required super.categoryName,
      required super.description,
      required super.imgStatus,
      required super.categoryType,
      required super.imgUrl});

  factory GetAddOnModel.fromJson(Map<String, dynamic> json) {
    return GetAddOnModel(
      categoryId: json['CATEGORY_ID'],
      categoryName: json['CATEGORY_NAME'],
      description: json['DESCRIPTION'],
      imgStatus: json['IMG_STATUS'],
      categoryType: json['CATEGORY_TYPE'],
      imgUrl: json['IMG_URL'],
    );
  }
}
