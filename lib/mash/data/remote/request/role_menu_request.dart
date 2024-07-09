class RoleMenuRequest {
  final String compId;
  final String userType;
  final String userId;
  final String roleId;

  RoleMenuRequest({
    required this.compId,
    required this.userType,
    required this.userId,
    required this.roleId,
  });

  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_USER_TYPE': userType,
      'P_USER_ID': userId,
      'P_ROLE_ID': roleId,
    };
  }
}
