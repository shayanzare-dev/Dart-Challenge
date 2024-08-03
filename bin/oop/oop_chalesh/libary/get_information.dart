import 'dart:io';

import 'book_information.dart';
import 'library.dart';
import 'members_information.dart';

class GetInformation {
  Library library;

  GetInformation(this.library);

  factory GetInformation.create({required Library libraryParametr}) {
    return GetInformation(libraryParametr);
  }

  void add() {
    print('1-add member , 2-add book');
    int? input = int.tryParse(stdin.readLineSync()!);
    if (input == 1) {
      print('name:');
      String name = stdin.readLineSync() ?? '';
      print('phone number(>10Length):');
      int? phoneNumber = int.tryParse(stdin.readLineSync() ?? '');
      print('email address:');
      String emailAddress = stdin.readLineSync() ?? '';
      Members members = Members.create(
          name: name,
          phoneNumber: phoneNumber ?? 0,
          emailAddress: emailAddress);
      library.addMembers(members: members);
    } else if (input == 2) {
      print('book Name:');
      String bookName = stdin.readLineSync() ?? '';
      print('writer:');
      String writer = stdin.readLineSync() ?? '';
      print('year public:');
      String yearPublic = stdin.readLineSync()!;
      print('price:');
      int? price = int.tryParse(stdin.readLineSync() ?? '');
      Book book = Book.create(bookName, writer, yearPublic, price!);
      library.addBook(book: book);
    } else {
      print('please valid number 1&2');
    }
  }

  void search() {
    print('1-search memberList , 2-search bookList');
    int? input = int.tryParse(stdin.readLineSync()!);
    if (input == 1) {
      for (final item in library.membersList) {
        Members members =
            Members(item.name, item.phoneNumber, item.emailAddress);
        library.searchMembers(members: members);
      }
    } else if (input == 2) {
      for (final item in library.bookList) {
        Book book =
            Book(item.bookName, item.writer, item.yearPublic, item.price);
        library.searchBook(book: book);
      }
    }
  }

  void edit() {
    preview();
    print('1-edit membersList , 2-edit bookList');
    int? input = int.tryParse(stdin.readLineSync()!);
    if (input == 1) {
      print('which one edit?:');
      int? input = int.tryParse(stdin.readLineSync()!);
      // کامل نیست
    } else if (input == 2) {
    } else {
      print('please valid number');
    }
  }

  void remove() {}

  void lending() {}

  void receive() {}

  void preview() {
    print('1--show bookList , 2-show memberList');
    int? input = int.tryParse(stdin.readLineSync()!);
    if (input == 1) {
      for (final item in library!.bookList) {
        print('''book name: ${item.bookName}
writer: ${item.writer}
year public: ${item.yearPublic}
price: ${item.price}
''');
      }
    } else if (input == 2) {
      for (final item in library.membersList) {
        print('''name: ${item.name}
phone number: ${item.phoneNumber}
email address: ${item.emailAddress}''');
      }
    } else {
      print('not found');
    }
  }

  void run() {
    while (true) {
      print(
          '1- add , 2-search , 3-edit , 4-remove , 5-lending , 6-receive , 7-preview , 8-exit');
      int? input = int.tryParse(stdin.readLineSync()!);
      switch (input) {
        case 1:
          add();
          break;
        case 2:
          search();
          break;
        case 3:
          edit();
          break;
        case 4:
          remove();
          break;
        case 5:
          lending();
          break;
        case 6:
          receive();
          break;
        case 7:
          preview();
          break;
        case 8:
          return;
      }
    }
  }
}