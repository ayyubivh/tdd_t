class UseStatusModel {
  final ChatStatus status;
  final DateTime lastSeen;

  UseStatusModel({required this.lastSeen, required this.status});
}

enum ChatStatus {
  online,
  offline,
}
