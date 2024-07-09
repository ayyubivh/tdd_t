import 'package:mash/mash/domain/entities/tc/tc_reason_entity.dart';

class TcReasonModel extends TcReasonEntity {
  const TcReasonModel({
    required super.reasonId,
    required super.reason,
  });

  factory TcReasonModel.fromJson(Map<String, dynamic> json) {
    return TcReasonModel(
      reasonId: json['REASON_ID'],
      reason: json['REASON'],
    );
  }
}
