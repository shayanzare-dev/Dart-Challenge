import 'book_information.dart';
import 'members_information.dart';

abstract class LibraryRepository {
  void addMembers({required Members members});

  void addBook({required Book book});

  void searchMembers({required Members members});

  void searchBook({required Book book});

  void editMembers({required int index, required Members members});

  void editBook({required int index, required Book book});

  void removeMembers({required Members members});

  void removeBook({required Book book});

  //امانت دادن
  void lending(Book book, Members members);

  // دریافت کردن
  void receive(Book book, Members members);
}
