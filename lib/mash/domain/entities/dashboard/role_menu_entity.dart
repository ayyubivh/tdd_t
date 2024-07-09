// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class RoleMenuEntity extends Equatable {
  final String menuName;
  final String icon;
  const RoleMenuEntity({
    required this.menuName,
    required this.icon,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'menuName': menuName,
      'icon': icon,
    };
  }

  factory RoleMenuEntity.fromMap(Map<String, dynamic> map) {
    return RoleMenuEntity(
      menuName: map['menuName'] as String,
      icon: map['icon'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory RoleMenuEntity.fromJson(String source) =>
      RoleMenuEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [menuName, icon];
}
