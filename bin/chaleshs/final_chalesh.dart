import 'dart:io';

Map<String, EnumBusType> mapNameTypeBus = {};
Map<String, Gender> mapNameGender = {};

enum EnumBusType { vip, normally }

enum Gender { boy, girl }

int? numberSeatsBus;

void main() {
  int? vipPrice;
  int? normalPrice;
  int? menuInput;
  print("vip Price:");
  vipPrice = int.tryParse(stdin.readLineSync()!);
  print("normal Price:");
  normalPrice = int.tryParse(stdin.readLineSync()!);
  while (true) {
    if (vipPrice != null &&
        vipPrice > 0 &&
        normalPrice != null &&
        normalPrice > 0) {
      normalPrice = normalPrice;
      vipPrice = vipPrice;
    } else {
      print("only int");
      break;
    }

    print("""
   1 : bus condition
   2 : bus reservation
   3 : buy bus ticket 
   4 : bus privew
   5 : show seat status
   6 : cancel ticket
   7 : reporting
   8 : exit""");

    print("Menu number:");
    menuInput = int.tryParse(stdin.readLineSync()!);
    if (menuInput != null && menuInput > 0 && menuInput <= 8) {
      switch (menuInput) {
        case 1:
          busCondition();
          break;
        case 2:
          busReservation();
          break;
        case 3:
          buyBusTicket();
          break;
        case 4:
          busPreview();
          break;
        case 5:
          showSeatStatus();
          break;
        case 6:
          cancelTicket();
          break;
        case 7:
          reporting();
          break;
        case 8:
          exitFunction(0);
          break;
      }
    } else {
      print("insert a valid number (1-8)");
    }
  }
}

void busCondition() {
  String? name;
  int? busType;
  print("number of seats:");
  numberSeatsBus = int.tryParse(stdin.readLineSync()!);
  print("name bus:");
  name = stdin.readLineSync();
  print("bus type(1=vip 2=normally)");
  busType = int.tryParse(stdin.readLineSync()!);
  if (name != null && busType != null && (busType == 1 || busType == 2)) {
    switch (busType) {
      case 1:
        mapNameTypeBus[name] = EnumBusType.vip;
        print("vip Bus ${vipCondition()}");
        break;
      case 2:
        mapNameTypeBus[name] = EnumBusType.normally;
        print("normal Bus ${normallyCondition()}");
        break;
      default:
        print("please insert 1 or 2");
        break;
    }
  } else {
    print("insert the valid name or bus type");
  }
  print("information : $mapNameTypeBus");
}

void busReservation() {
  String? name;
  int? inputGender;
  print("name:");
  name = stdin.readLineSync()!;
  print("input gender (1=boy 2=girl)");
  inputGender = int.tryParse(stdin.readLineSync()!);
  switch (inputGender) {
    case 1:
      mapNameGender[name] = Gender.boy;
      break;
    case 2:
      mapNameGender[name] = Gender.girl;
      break;
    default:
      print("insert 1 or 2");
      break;
  }
  print(mapNameGender);
  getPhoneNumber();
}

void buyBusTicket() {
  print("not complete");
}

void busPreview() {
  print("not complete");
}

void showSeatStatus() {
  print("not complete");
}

void cancelTicket() {
  print("not complete");
}

void reporting() {
  print("not complete");
}

void exitFunction(int num) {
  exit(num);
}

int? normallyCondition() {
  int? normalBusRow;
  String star = "*";
  if (numberSeatsBus != null &&
      numberSeatsBus! >= 15 &&
      numberSeatsBus! % 4 == 0) {
    normalBusRow = (numberSeatsBus! ~/ 4);
    for (int i = 1; i <= normalBusRow; i++) {
      // print((numberSeatsBus! - numberSeatsBus! + i ).toString());
      print(star * 4);
      if (i == (normalBusRow - 3)) {
        // print((numberSeatsBus! - numberSeatsBus! + i ).toString());
        print(star * 2);
      } else if (i == (normalBusRow - 1)) {
        //print((numberSeatsBus! - numberSeatsBus! + i ).toString());
        print(star * (4 + 1));
        break;
      }
    }
  } else {
    print("Please insert a valid number");
  }
  return normalBusRow;
}

int? vipCondition() {
  int? vipBusRow;
  String star = "*";
  if (numberSeatsBus != null &&
      numberSeatsBus! >= 11 &&
      numberSeatsBus! % 3 == 0) {
    vipBusRow = (numberSeatsBus! ~/ 3);
    for (int i = 1; i <= vipBusRow;) {
      i++;
      print(star * 3);
      if (i == (vipBusRow - 3)) {
        print(star * 1);
      } else if (i == (vipBusRow - 1)) {
        print(star * (3 + 1));
        break;
      }
    }
  } else {
    print("Please insert a valid number");
  }
  return vipBusRow;
}

String? getPhoneNumber() {
  String? phoneNumber;
  print("phone number:");
  phoneNumber = stdin.readLineSync()!;
  if (phoneNumber.length == 11) {
    phoneNumber = phoneNumber;
  } else {
    print("Invalid number");
  }
  return phoneNumber;
}
