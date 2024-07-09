class AddOnRequest {
  final String compId;
  final String categoryId;
  final String categoryType;

  AddOnRequest(
      {required this.compId,
      required this.categoryId,
      required this.categoryType});
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": 200001,
      "P_CATGORY_ID": 1,
      "p_CATEGORY_TYPE": 0,
    };
  }
}
