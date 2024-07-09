
class TransportationChangeStopRequest {
  final String? companyId;
  final String? studentId;
  final String? pickUpId;
  final String? dropId;

  TransportationChangeStopRequest(
      {required this.companyId, required this.studentId,required this.pickUpId,required this.dropId,});

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":companyId,
      "P_STUDENT_ID":studentId,
      "P_PICKUP_ID":pickUpId,
      "P_DROP_ID":dropId
    };
  }
}

