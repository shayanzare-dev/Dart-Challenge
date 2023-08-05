import 'dart:io';

import 'book_information.dart';
import 'library.dart';
import 'members_information.dart';

class GetInformation {
  int input() {
    late int? input = int.tryParse(stdin.readLineSync()!);
    return input!;
  }

  Library? library;

  GetInformation(this.library);

  void add() {
    while (true) {
      print('1- continue , 2-break');
      late int input1 = input();
      if (input1 == 1) {
        print('name:');
        String name = stdin.readLineSync() ?? '';
        print('phone number(>10Length):');
        int? phoneNumber = int.tryParse(stdin.readLineSync() ?? '');
        if (phoneNumber.toString().split('').length >= 10) {
          print('email address:');
          String emailAddress = stdin.readLineSync() ?? '';
          Members members = Members(name, phoneNumber!, emailAddress);
          print('book Name:');
          String bookName = stdin.readLineSync() ?? '';
          print('writer:');
          String writer = stdin.readLineSync() ?? '';
          print('year public:');
          String yearPublic = stdin.readLineSync()!;
          print('price:');
          int? price = int.tryParse(stdin.readLineSync() ?? '');
          Book book = Book(bookName, writer, yearPublic, price!);
          library?.add(book, members);
        } else {
          print('please inserbt top 11 length phone number');
        }
      } else if (input1 == 2) {
        break;
      } else {
        print('valid number 1&&2');
      }
    }
  }

  void search() {
    print('which one item?:');
    for (final item in library!.membersList) {
      print('''name: ${item.name}
phone number: ${item.phoneNumber}
email address:${item.emailAddress}''');
    }
  // library!.membersList.indexOf();
  }

  void edit() {}

  void remove() {}

  void lending() {}

  void receive() {}
}
