






class GetFacilityAmountRequest {
  final String companyId;
  final String pickUpStop;
  final String dropStop;

  GetFacilityAmountRequest(
      {required this.companyId,
        required this.pickUpStop,
      required this.dropStop
      });

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":companyId,
      "P_PICKUP_STOP":pickUpStop,
      "P_DROP_STOP":dropStop
    };
  }
}

