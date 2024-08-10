import 'book/author.dart';
import 'book/book.dart';
import 'library.dart';
import 'member/member.dart';

void main() {
  final List<Book> books = [
    Book(
        title: 'shayan ',
        author: Author(name: 'sav', nationalCode: 54650, lastName: 'zare'),
        isbnCode: 852154465489872,
        publicationYear: 1347),
    Book(
      title: 'asdasd',
      author: Author(name: 'sad', nationalCode: 54650, lastName: 'azre'),
      isbnCode: 852154465489872,
      publicationYear: 1201,
    ),
  ];

  final Library library = Library();
  final Member member = Member(fullName: 'shayan zare');
  library.addMember(fullName: 'shayan zare');
  library.addMember(fullName: 'arman zare');
  library.addBook(
      title: 'babee',
      author:
          Author(name: 'hesam', lastName: 'zare', nationalCode: 548012321856),
      isbnCode: 8521478932154,
      publicationYear: 1348);
  library.addBook(
      title: 'babee2',
      author:
          Author(name: 'hesam2', lastName: 'zare', nationalCode: 2158268732321),
      isbnCode: 13232121212121,
      publicationYear: 1349);
  member.lendBook();
  library.showBooks();
}
