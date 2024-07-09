


import 'package:equatable/equatable.dart';

class OfflineTimeTableTermEntity extends Equatable{
  final String termId;
  final String sectionName;
  final bool isTerm;
  final String createdOn;

  OfflineTimeTableTermEntity({
    required this.termId,
    required this.sectionName,
    required this.isTerm,
    required this.createdOn,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    termId,
    sectionName,
    isTerm,
    createdOn
  ];
}
