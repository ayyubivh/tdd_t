import 'package:equatable/equatable.dart';

class GetAddOnEntity extends Equatable {
  final String? categoryId;
  final String? categoryName;
  final String? description;
  final String? imgStatus;
  final String? categoryType;
  final String? imgUrl;

  const GetAddOnEntity({required this.categoryId, required this.categoryName, required this.description, required this.imgStatus, required this.categoryType, required this.imgUrl});


  @override
  List<Object?> get props => [categoryId,categoryName,description,imgStatus,categoryType,imgUrl];
}
