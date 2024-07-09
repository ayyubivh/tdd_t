

class GetPhysicalLibraryRequest {
  final String pCompId;
  final String prmLanguageId;
  final String prmAuthorId;
  final String prmSearch;
  final String prmBookDtlsId;
  final String prmOffset;
  final String prmLimit;

  GetPhysicalLibraryRequest({required this.pCompId, required this.prmLanguageId, required this.prmAuthorId, required this.prmSearch, required this.prmBookDtlsId, required this.prmOffset, required this.prmLimit});
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":pCompId,
      "prm_language_id":prmLanguageId,
      "prm_author_id":prmAuthorId,
      "prm_search":prmSearch,
      "prm_book_dtls_id":prmBookDtlsId,
      "prm_offset":prmOffset,
      "prm_limit":prmLimit
    };
  }

}