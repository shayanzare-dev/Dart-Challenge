import 'book_information.dart';

class Members {
  final String name;
  final int phoneNumber;
  final String emailAddress;
  static final List<Book> broweddBooks = [];

  const Members(this.name, this.phoneNumber, this.emailAddress);

  factory Members.factory(
      {required String name,
      required int phoneNumber,
      required String emailAddress}) {
    return Members(name, phoneNumber, emailAddress);
  }
}
