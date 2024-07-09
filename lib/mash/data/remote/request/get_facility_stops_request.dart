

class GetFacilityStopsRequest {
  final String companyId;
  final String searchTerm;


  GetFacilityStopsRequest(
      {required this.companyId,
        required this.searchTerm,
        });

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":companyId,
      "P_SEARCH_KEY":searchTerm
    };
  }
}
