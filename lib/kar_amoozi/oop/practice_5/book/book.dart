import 'author.dart';
import 'book_status.dart';

class Book {
  static int idGenerator = 0;
  final String title;
  final Author author;
  final String isbnCode;
  final int id;
  final int publicationYear;
  BookStatus bookStatus = BookStatus();

  Book(
      {required this.title,
      required this.author,
      required int isbnCode,
      required this.publicationYear})
      : assert(publicationYear.toString().split('').length >= 4,
            'publication year must has 4 characters!'),
        assert(isbnCode.toString().split('').length >= 13,
            'isbn code has not 13 character!'),
        isbnCode =
            'ISBN ${isbnCode.toString().split('').getRange(0, 3).join()}-${isbnCode.toString().split('').getRange(3, 4).join()}-${isbnCode.toString().split('').getRange(4, 7).join()}-${isbnCode.toString().split('').getRange(7, 12).join()}-${isbnCode.toString().split('').getRange(12, 13).join()}',
        id = idGenerator++;

  @override
  String toString() {
    return 'Book{title: $title, author: $author, isbnCode: $isbnCode, id: $id, publicationYear: $publicationYear, bookStatus: $bookStatus}';
  }
}
