class BookStatus {
  String _status = 'available';

  String get status => _status;

  void lending() => _status = 'loaned';

  void returns() => _status = 'available';

  BookStatus();

  @override
  String toString() {
    return 'BookStatus{_status: $_status}';
  }
}
