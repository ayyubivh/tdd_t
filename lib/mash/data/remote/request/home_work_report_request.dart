class HomeWorkReportRequest {
  final String compId;
  final String startDate;
  final String endDate;
  final String classId;
  final String divId;
  final String subjId;
  final String acadId;

  HomeWorkReportRequest({
    required this.compId,
    required this.startDate,
    required this.endDate,
    required this.classId,
    required this.divId,
    required this.subjId,
    required this.acadId,
  });
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_START_DATE': startDate,
      'P_END_DATE': endDate,
      'P_CLASS_ID': classId,
      'P_DIV_ID': divId,
      'P_SUBJ_ID': subjId,
      'P_ACAD_ID': acadId,
    };
  }
}
