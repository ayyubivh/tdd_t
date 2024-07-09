class SyllabusRequest {
  final String? compId;
  final String? acadId;
  final String? userType;
  final String? termId;

  SyllabusRequest({
    required this.compId,
    required this.acadId,
    required this.userType,
    required this.termId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_ACAD_ID': acadId,
      'P_USER_TYPE': userType,
      'P_TERM_ID': termId,
    };
  }
}

class SyllabusTermsRequest {
  final String compId;
  final String acadId;
  final String classId;

  SyllabusTermsRequest({
    required this.compId,
    required this.acadId,
    required this.classId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_ACAD_ID': acadId,
      'P_CLASS_ID': classId,
    };
  }
}
