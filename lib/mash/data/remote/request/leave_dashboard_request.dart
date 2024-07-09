

class LeaveDashboardRequest{

final String pCompId;
final String pUserId;
final String pAcademicId;
final String pDivisionId;

  LeaveDashboardRequest({required this.pCompId, required this.pUserId, required this.pAcademicId, required this.pDivisionId});

Map<String, dynamic> toJson() {
  return {
    "P_compid": pCompId,
    'P_user_id': pUserId,
    'P_academic_id': pAcademicId,
    'P_division_id': pDivisionId
  };
}

}