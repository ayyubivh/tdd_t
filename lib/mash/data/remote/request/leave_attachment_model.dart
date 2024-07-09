import 'package:freezed_annotation/freezed_annotation.dart';

part 'leave_attachment_model.freezed.dart';

@freezed
class LeaveAttachmentModel with _$LeaveAttachmentModel {
  const factory LeaveAttachmentModel({
    String? uploadPhoto,
    String? takePhoto,
    String? fromDate,
    String? toDate,
  }) = _LeaveAttachmentModel;
}
