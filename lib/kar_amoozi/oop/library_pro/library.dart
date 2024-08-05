import 'book/book.dart';
import 'loan.dart';
import 'member.dart';

class Library {
  static final List<Member> members = [];
  static final List<Book> books = [];

  final Book book;
  final Member member;
  final Loan loan;

  Library({required this.book, required this.member, required this.loan});

  void addBook({required Book book}) {
    books.add(book);
    print(books);
  }

  bool searchBook({required Book book}) {
    return books.contains(book);
  }

  void removeBook({required Book book}) {
    if (books.contains(book)) {
      members.remove(book);
    } else {
      print('book not find');
    }
  }
}
