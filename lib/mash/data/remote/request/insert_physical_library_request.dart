

class InsertPhysicalLibraryRequest {
  final String pBookDtlId;
  final String pCompId;
  final String pUserType;

  InsertPhysicalLibraryRequest({required this.pBookDtlId, required this.pCompId, required this.pUserType});


  Map<String, dynamic> toJson() {
    return {
      "P_BOOK_DTLS_ID":pBookDtlId,
      "P_COMP_ID":pCompId,
      "P_USER_TYPE":pUserType
    };
  }
}