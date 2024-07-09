import 'package:equatable/equatable.dart';

class TcReasonEntity extends Equatable {
  final String? reasonId;
  final String? reason;

  const TcReasonEntity({required this.reasonId, required this.reason});
  @override
  List<Object?> get props => [];
}
