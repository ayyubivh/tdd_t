


class IdRequest{
  final String companyId;

  IdRequest({
    required this.companyId,
  });


  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': companyId,
    };
  }
}