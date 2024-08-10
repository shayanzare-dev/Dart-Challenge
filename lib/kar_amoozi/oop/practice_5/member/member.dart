import '../../safe_number_get_input.dart';
import '../book/book.dart';
import '../book/book_status.dart';
import '../library.dart';
import 'member_ship_data_base.dart';

class Member {
  static int count = 0;

  final String fullName;
  final int memberShipCode;
  final int id;
  int limitedBookLending;
  final List<Book> lendingBook = [];

  Member({
    required this.fullName,
  })  : limitedBookLending = 0,
        id = count++,
        memberShipCode = MemberShipData.generateMemberShipCode();

  void lendBook() {
    if (limitedBookLending < 5) {
      final Library library = Library();
      if (Library.books.isNotEmpty) {
        library.showBooks();
        final int selectedBook = safeGetNumber(
            printValue:
                'which one?:(valid number 1 ta ${Library.books.length})');
        final BookStatus newBookStatus = BookStatus();
        newBookStatus.lending();
        Library.books[selectedBook - 1].bookStatus = newBookStatus;
        lendingBook.add(Library.books[selectedBook - 1]);
        limitedBookLending++;
      } else {
        print("i'm so sorry. this library is empty");
      }
    } else {
      print('the limit is full');
    }
  }

  @override
  String toString() {
    return 'Member{fullName: $fullName, memberShipCode: $memberShipCode, id: $id, limitedBookLending: $limitedBookLending, lendingBook: $lendingBook}';
  }
}
