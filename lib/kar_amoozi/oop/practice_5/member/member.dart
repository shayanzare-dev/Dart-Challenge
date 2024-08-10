import 'book/book.dart';
import 'member_ship_data_base.dart';

class Member {
  static int count = 0;

  final String name;
  final int memberShipCode;
  final int id;
  final int limitedBookLending;
  final List<Book> lendingBook = [];

  Member({
    required this.name,
  })  : limitedBookLending = 0,
        id = count++,
        memberShipCode = MemberShipData.generateMemberShipCode();
}
