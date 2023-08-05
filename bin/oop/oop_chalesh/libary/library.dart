import 'book_information.dart';
import 'library_repository.dart';
import 'members_information.dart';

class Library extends LibraryRepository {
  static const String name = 'poori soltani';
  static const String address = 'jomhoori , koche 19';
  List<Book> bookList = [];
  List<Members> membersList = [];

  @override
  void add(Book book, Members members) {
    bookList.add(book);
    membersList.add(members);
  }

  @override
  void search(Book book, Members members) {
    if (bookList.contains(book)) {
      print('$book in list');
    }
    if (membersList.contains(members)) {
      print('$members in list');
    }
  }

  @override
  void edit(int index, Book book, Members members) {
    bookList[index] = book;
    membersList[index] = members;
  }

  @override
  void remove(
      {required int index, required Book book, required Members members}) {
    bookList.removeAt(index);
    membersList.removeAt(index);
  }

  @override
  void lending(Book book, Members members) {
    if (bookList.contains(book) && membersList.contains(members)) {
      Members.broweddBooks.add(book);
    } else {
      print('not found');
    }
  }

  @override
  void receive(Book book, Members members) {
    if (Members.broweddBooks.contains(book)) {
      Members.broweddBooks.remove(book);
    } else {
      print('not found');
    }
  }
}
