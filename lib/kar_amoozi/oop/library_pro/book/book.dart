import 'author.dart';

class Book {
  final Author author;
  final String title;
  final String isbnCode;
  final int publicationYear;

  const Book(
      {required this.author,
      required this.title,
      required this.isbnCode,
      required this.publicationYear});

  @override
  String toString() {
    return 'Book{author: $author, title: $title, isbnCode: $isbnCode, publicationYear: $publicationYear}';
  }
}
