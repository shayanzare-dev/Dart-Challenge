import 'package:project/kar_amoozi/oop/library_pro/book/author.dart';
import 'package:project/kar_amoozi/oop/library_pro/book/book.dart';
import 'package:project/kar_amoozi/oop/library_pro/loan.dart';
import 'package:project/kar_amoozi/oop/library_pro/member.dart';

import 'library.dart';

void main() {
  Library library = Library(
    book: Book(
        title: 'aA',
        author: Author(name: 'as', age: 12, nationality: 'asas'),
        isbnCode: '123112',
        publicationYear: 1623),
    member: Member(),
    loan: Loan(),
  );

  library.addBook(
      book: Book(
          author: Author(name: 'as', age: 12, nationality: 'asas'),
          title: 'asax',
          isbnCode: '12121',
          publicationYear: 2019));
}
