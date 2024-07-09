class BookmarkLikeModel {
  final String pCompId;
  final String pUserId;
  final String pModuleName;
  final String prmContentId;
  final String prmUserType;
  final String prmFromMob;
  final String prmBookmark;
  final String prmLike;

  BookmarkLikeModel({
    required this.pCompId,
    required this.pUserId,
    required this.pModuleName,
    required this.prmContentId,
    required this.prmUserType,
    required this.prmFromMob,
    required this.prmBookmark,
    required this.prmLike,
  });

  // Method to convert a JSON map to an instance of BookmarkLikeModel
  factory BookmarkLikeModel.fromJson(Map<String, dynamic> json) {
    return BookmarkLikeModel(
      pCompId: json['P_COMP_ID'],
      pUserId: json['P_USER_ID'],
      pModuleName: json['P_MODULE_NAME'],
      prmContentId: json['prm_content_id'],
      prmUserType: json['prm_user_type'],
      prmFromMob: json['prm_from_mob'],
      prmBookmark: json['prm_bookmark'],
      prmLike: json['prm_like'],
    );
  }

  // Method to convert an instance of BookmarkLikeModel to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_USER_ID': pUserId,
      'P_MODULE_NAME': pModuleName,
      'prm_content_id': prmContentId,
      'prm_user_type': prmUserType,
      'prm_from_mob': prmFromMob,
      'prm_bookmark': prmBookmark,
      'prm_like': prmLike,
    };
  }
}
