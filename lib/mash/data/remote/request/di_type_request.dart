class DlTypeRequest {
  final String pCompId;
  final String pUserId;
  final String pModuleName;
  final String pJson;

  DlTypeRequest({
    required this.pCompId,
    required this.pUserId,
    required this.pModuleName,
    required this.pJson,
  });

  // Factory constructor to create an instance from JSON
  factory DlTypeRequest.fromJson(Map<String, dynamic> json) {
    return DlTypeRequest(
      pCompId: json['P_COMP_ID'],
      pUserId: json['P_USER_ID'] as String,
      pModuleName: json['P_MODULE_NAME'] as String,
      pJson: json['P_JSON'],
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': pCompId,
      'P_USER_ID': pUserId,
      'P_MODULE_NAME': pModuleName,
      'P_JSON': pJson,
    };
  }
}
