class LogFormState {
  bool isBusy;
  bool isReportReady;
  bool isError;

  LogFormState({
    this.isBusy = false,
    this.isReportReady = false,
    this.isError = false,
  });

  LogFormState copyWith({
    bool? isBusy,
    bool? isReportReady,
    bool? isError,
  }) {
    return LogFormState(
        isBusy: isBusy ?? this.isBusy,
        isReportReady: isReportReady ?? this.isReportReady,
        isError: isError ?? this.isError);
  }
}
