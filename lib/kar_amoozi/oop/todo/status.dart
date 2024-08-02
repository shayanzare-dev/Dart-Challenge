class Status {
  String status;

  void doneStatus() => status = 'done';

  void PendingStatus() => status = 'pending';

  Status({this.status = 'pending'});

  @override
  String toString() {
    return 'Status{status: $status}';
  }
}
