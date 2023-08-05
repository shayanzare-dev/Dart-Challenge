import 'book_information.dart';
import 'members_information.dart';

abstract class LibraryRepository {
  void add(Book book, Members members);

  void search(Book book, Members members);

  void edit(int index, Book book, Members members);

  void remove(
      {required int index, required Book book, required Members members});

  //امانت دادن
  void lending(Book book, Members members);

  // دریافت کردن
  void receive(Book book, Members members);
}
