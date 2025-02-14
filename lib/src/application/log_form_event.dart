class LogFormEvent {}

class LogSavedEvent extends LogFormEvent {
  final List<Map<String, dynamic>> dataMap;

  LogSavedEvent({required this.dataMap});
}

class LogSubmittedEvent extends LogFormEvent {
  final List<Map<String, dynamic>> dataMap;

  LogSubmittedEvent({required this.dataMap});
}
