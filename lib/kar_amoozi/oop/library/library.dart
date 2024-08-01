import 'book.dart';

class Library {
  final List<Book> _books = [];

  void addBook(Book book) {
    _books.add(book);
  }

  List<Book> get books => _books;

  bool lend(Book book) {
    final int index = _books.indexWhere(
      (element) => element.code == book.code,
    );

    if (index == -1) {
      return false;
    } else {
      if (_books[index].isInLibrary == false) {
        return false;
      }
      _books[index].isInLibrary = false;
      return true;
    }
  }
}
