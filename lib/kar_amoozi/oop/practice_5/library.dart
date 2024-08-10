import '../safe_number_get_input.dart';
import '../safe_string_get.dart';
import 'book/author.dart';
import 'book/book.dart';
import 'member/member.dart';

class Library {
  static final List<Book> books = [];
  static final List<Member> members = [];

  void addMember({required String fullName}) {
    final Member member = Member(fullName: fullName);
    members.add(member);
  }

  void addBook(
      {required String title,
      required Author author,
      required int isbnCode,
      required int publicationYear}) {
    books.add(Book(
        title: title,
        author: author,
        isbnCode: isbnCode,
        publicationYear: publicationYear));
  }

  void removeBook() {
    showBooks();
    final int selectedBook = safeGetNumber(
        printValue: 'which one?:(valid number 1 ta ${books.length})');
    books.removeAt(selectedBook - 1);
  }

  void removeMember() {
    showMembers();
    final int selectedMember = safeGetNumber(
        printValue: 'which one?:(valid number 1 ta ${books.length})');
    members.removeAt(selectedMember - 1);
  }

  void searchFromBook() {
    final String selectedTitle = safeStringGet(value: 'insert book title:');
    for (final Book book in books) {
      if (book.title.trim() == selectedTitle.trim()) {
        print('yes this book in library');
        print(book.toString());
      }
    }
  }

  void searchFromMember() {
    final String selectedName = safeStringGet(value: 'insert name member:');
    for (final Member member in members) {
      if (member.fullName.trim() == selectedName.trim()) {
        print('yes this book in library');
        print(member.toString());
      }
    }
  }

  void showBooks() {
    for (int i = 0; i < books.length; i++) {
      print('${i + 1}-${books[i]}');
    }
  }

  void showMembers() {
    for (int i = 0; i < members.length; i++) {
      print('${i + 1}-${members[i]}');
    }
  }
}
