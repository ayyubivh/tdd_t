import 'package:equatable/equatable.dart';

class AddOnDetailEntity extends Equatable {
  final String subCategoryId;
  final String subCategoryName;
  final String categoryId;
  final String description;
  final String imgStatus;
  final String imgUrl;
  final String links;

  const AddOnDetailEntity(
      {required this.subCategoryId,
      required this.subCategoryName,
      required this.categoryId,
      required this.description,
      required this.imgStatus,
      required this.imgUrl,
      required this.links});

  @override
  List<Object?> get props => [
        subCategoryId,
        subCategoryName,
        categoryId,
        description,
        imgStatus,
        imgUrl,
        links
      ];
}
