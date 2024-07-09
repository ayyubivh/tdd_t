

import 'package:equatable/equatable.dart';

class IdRequestEntity extends Equatable{
  final String request;
  final String tabId;

  const IdRequestEntity({required this.request, required this.tabId});

  @override
  List<Object?> get props => [
    request,tabId
  ];
}