import '../practice_5/book/author.dart';

class Book {
  static int bookCount = 0;

  String title;
  int code;
  Author author;
  bool isInLibrary;

  Book({
    required this.title,
    required this.author,
  })  : isInLibrary = true,
        code = bookCount++;

  @override
  String toString() {
    return 'Book{title: $title, code: $code, author: $author, isInLibrary: $isInLibrary}';
  }
}
