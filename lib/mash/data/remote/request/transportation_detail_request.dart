class TransportationDetailRequest {
  final String? companyId;
  final String? studentId;

  TransportationDetailRequest(
      {required this.companyId, required this.studentId});

  Map<String, dynamic> toJson() {
    return {'P_COMP_ID': companyId, "P_STUDENT_ID": studentId};
  }
}
