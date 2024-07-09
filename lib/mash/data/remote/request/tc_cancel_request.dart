class TcCancelRequest {
  final String? compId;
  final String? tcId;

  TcCancelRequest({required this.compId, required this.tcId});
  Map<String, dynamic> toJson() {
    return {
      'P_COMP_ID': compId,
      'P_TC_ID': tcId,
    };
  }
}
