class UpdateProfileRequest {
  String? compId;
  String? studentId;
  String? primaryNum;
  String? primaryMail;
  String? fatherNum;
  String? motherNum;
  String? fatherMail;
  String? motherMail;
  String? perAddress;
  String? prfPhoto;
  String? tabId;
  String? editedBy;
  String? bloodGroup;

  UpdateProfileRequest({
    required this.compId,
    required this.studentId,
    required this.primaryNum,
    required this.primaryMail,
    required this.fatherNum,
    required this.motherNum,
    required this.fatherMail,
    required this.motherMail,
    required this.perAddress,
    required this.prfPhoto,
    required this.tabId,
    required this.editedBy,
    required this.bloodGroup,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_STUDENT_ID': studentId,
      'p_primary_num': primaryNum,
      'p_primary_mail': primaryMail,
      'p_father_num': fatherNum,
      'p_mother_num': motherNum,
      'p_father_mail': fatherMail,
      'p_mother_mail': motherMail,
      'p_per_address': perAddress,
      'p_prf_phto': prfPhoto,
      'p_tab_id': tabId,
      'P_edited_by': editedBy,
      'p_blood_grp': bloodGroup,
    };
  }
}
