class BookStatus {
  String status = 'available';

  void lending() => status = 'loaned';

  void returns() => status = 'available';
}
