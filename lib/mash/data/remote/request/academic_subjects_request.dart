class ClassAndCompIdRequest {
  final String compId;
  final String classId;

  ClassAndCompIdRequest({
    required this.compId,
    required this.classId,
  });
  Map<String, dynamic> toJson() {
    return {
      "P_COMP_ID": compId,
      "P_CLASS_ID": classId,
    };
  }
}
