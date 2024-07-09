class TcStatusRequest {
  final String compId;
  final String parentId;

  TcStatusRequest({required this.compId, required this.parentId});

  Map<String, dynamic> toJson() {
    return {
      'p_comp_id': compId,
      'p_parent_id': parentId,
    };
  }
}
