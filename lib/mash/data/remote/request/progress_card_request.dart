class ProgressCardRequest {
  final String? compId;
  final String? academicId;
  final String? userId;
  final String? termId;

  ProgressCardRequest({
    required this.compId,
    required this.academicId,
    required this.userId,
    required this.termId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_ACADEMIC_ID': academicId,
      'P_USER_ID': userId,
      'P_TERM_ID': termId,
    };
  }
}
