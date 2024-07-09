

class GetAddOnRequest {
  final String pCompId;
  final String pCategoryId;
  final String pCategoryType;

  GetAddOnRequest({
    required this.pCompId,
    required this.pCategoryId,
    required this.pCategoryType,
  });

  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID":pCompId,
      "P_CATGORY_ID":pCategoryId,
      "P_CATEGORY_TYPE":pCategoryType
    };
  }
}
