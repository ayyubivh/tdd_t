import 'package:equatable/equatable.dart';

class AddOnEntity extends Equatable {
  final String? subCategoryId;
  final String? subCategoryName;
  final String? categoryId;
  final String? description;
  final String? imgStatus;
  final String? imgUrl;
  final String? links;

  const AddOnEntity({
    required this.subCategoryId,
    required this.subCategoryName,
    required this.categoryId,
    required this.description,
    required this.imgStatus,
    required this.imgUrl,
    required this.links,
  });

  @override
  List<Object?> get props => [subCategoryId];
}
