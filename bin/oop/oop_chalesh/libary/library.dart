import 'book_information.dart';
import 'library_repository.dart';
import 'members_information.dart';

class Library extends LibraryRepository {
  static const String name = 'poori soltani';
  static const String address = 'jomhoori , koche 19';
  List<Book> bookList = [];
  List<Members> membersList = [];

  @override
  void addBook({required Book book}) {
    bookList.add(book);
  }

  @override
  void addMembers({required Members members}) {
    membersList.add(members);
  }

  @override
  void editBook({required int index, required Book book}) {
    if (bookList.contains(book)) {
      bookList[index] = book;
    } else {
      print('not found book');
    }
  }

  @override
  void editMembers({required int index, required Members members}) {
    if (membersList.contains(members)) {
      membersList[index] = members;
    } else {
      print('not found member');
    }
  }

  @override
  void lending(Book book, Members members) {
    if (bookList.contains(book) && membersList.contains(members)) {
      bookList.remove(book);
      Members.broweddBooks.add(book);
    } else {
      print('not found book or member');
    }
  }

  @override
  void receive(Book book, Members members) {
    if (Members.broweddBooks.contains(book)) {
      Members.broweddBooks.remove(book);
      bookList.add(book);
    }
  }

  @override
  void removeBook({required Book book}) {
    bookList.remove(book);
  }

  @override
  void removeMembers({required Members members}) {
    membersList.remove(members);
  }

  @override
  void searchBook({required Book book}) {
    if (bookList.contains(book)) {
      print('found');
    } else {
      print('not found');
    }
  }

  @override
  void searchMembers({required Members members}) {
    if (membersList.contains(members)) {
      print('found');
    } else {
      print('not found');
    }
  }
}
