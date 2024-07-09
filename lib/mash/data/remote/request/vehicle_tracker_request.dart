class VehicleTrackerRequest {
  final String companyId;
  final String studentId;

  VehicleTrackerRequest({
    required this.companyId,
    required this.studentId,
  });

  Map<String, dynamic> toJson() {
    return {'P_COMP_ID': companyId, "P_STUDENT_ID": studentId};
  }
}
