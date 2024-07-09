


class GetRequiredLibraryDataRequest {
  final String pCompId;
  final String pSearch;

  GetRequiredLibraryDataRequest({required this.pCompId, required this.pSearch});
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":pCompId,
      "P_SEARCH": pSearch
    };
  }
}