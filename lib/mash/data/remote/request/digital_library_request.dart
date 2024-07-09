class DigitalLibraryRequest {
  String pCompId;
  String pUserId;
  String pModuleName;
  String? prmContentId;
  String? prmIsActive;
  String? pResearchId;

  String? prmTypeId;
  String? prmCatId;
  String? prmSubId;
  String? prmSubCatId;
  String? prmLangId;
  String? prmSearchTxt;
  String? pSearchTxt;
  String? prmClassId;
  String? prmUserType;
  String? pUserType;

  int? prmOffset;
  int? prmLimit;
  String? prm_viewmine;
  String? prm_usr_act_id;

  DigitalLibraryRequest(
      {required this.pCompId,
      required this.pUserId,
      required this.pModuleName,
      this.prmContentId,
      this.prmIsActive,
      this.prmTypeId,
      this.prmCatId,
      this.prmSubId,
      this.prmSubCatId,
      this.prmLangId,
      this.prmSearchTxt,
      this.prmUserType,
      this.prmOffset,
      this.prmLimit,
      this.pResearchId,
      this.prmClassId,
      this.pUserType,
      this.prm_viewmine,
      this.prm_usr_act_id,
      this.pSearchTxt});

  factory DigitalLibraryRequest.fromJson(Map<String, dynamic> json) {
    return DigitalLibraryRequest(
      pCompId: json['P_COMP_ID'],
      pUserId: json['P_USER_ID'],
      pModuleName: json['P_MODULE_NAME'],
      prmContentId: json['prm_content_id'],
      prmIsActive: json['prm_isactive'],
      prmTypeId: json['prm_type_id'],
      prmCatId: json['prm_cat_id'],
      prmSubCatId: json['prm_subcat_id'],
      prmLangId: json['prm_lang_id'],
      prmSearchTxt: json['prm_search_txt'],
      prmUserType: json['prm_user_type'],
      prmOffset: json['prm_offset'],
      prmLimit: json['prm_limit'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = {
      'P_COMP_ID': pCompId,
      'P_USER_ID': pUserId,
      'P_MODULE_NAME': pModuleName,
      'prm_content_id': prmContentId,
      'prm_isactive': prmIsActive,
      'prm_type_id': prmTypeId,
      'prm_cat_id': prmCatId,
      'prm_subcat_id': prmSubCatId,
      'prm_sub_id': prmSubId,
      'prm_lang_id': prmLangId,
      'prm_search_txt': prmSearchTxt,
      'prm_user_type': prmUserType,
      'prm_offset': prmOffset,
      'prm_limit': prmLimit,
      'prm_class_id': prmClassId,
      'p_usertype': pUserType,
      'p_research_id': pResearchId,
      'p_search_txt': pSearchTxt,
      'prm_usr_act_id': prm_usr_act_id,
      'prm_viewmine': prm_viewmine
    };

    json.removeWhere((key, value) => value == null);
    return json;
  }
}
