import 'dart:io';

enum EnumScores {
  A,
  B,
  C,
  D;
}

void main() {
  // int? studentNumber = getStudentNumber();
  print(getStudentNumber());
//  int? bookNumber = getBookNumber(4);
}

int getStudentNumber() {
  while (true) {
    print("student Number:");
    int? studentNumber = int.tryParse(stdin.readLineSync()!);
    if (studentNumber != null && studentNumber > 0) {
      getBookNumber(studentNumber);
      return studentNumber;
    } else {
      print("please valid number");
    }
  }
}

int? getBookNumber(int studentNumber) {
  print("book number $studentNumber:");
  int? bookNumber = int.tryParse(stdin.readLineSync()!);
  if (studentNumber == 1) {
    getUnitNumber(bookNumber!);
    getScoreNumber(bookNumber);
    return bookNumber;
    //  base case
  } else {
    return getBookNumber(studentNumber - 1);
    //  recursive case
  }
}

int? getUnitNumber(int bookNumber) {
  print("unit number $bookNumber:");
  int? unitNumber = int.tryParse(stdin.readLineSync()!);
  int sum = 0;
  if (bookNumber == 1) {
    return unitNumber;
    //  base case
  } else {
    sum = unitNumber! + sum;
    print("sum = $sum");
    return getUnitNumber(bookNumber - 1);
    //  recursive case
  }
}

int? getScoreNumber(int bookNumber) {
  while (true) {
    print("score number $bookNumber:");
    int? scoreNumber = int.tryParse(stdin.readLineSync()!);
    if (scoreNumber != null && (scoreNumber > 0 && scoreNumber <= 4)) {
      return scoreNumber;
    } else {
      print("please insert 1-4");
    }
  }
}

EnumScores scoreCalculation(int scoreNumber) {
  while (true) {
    switch (scoreNumber) {
      case 4:
        return EnumScores.A;
      case 3:
        return EnumScores.B;
      case 2:
        return EnumScores.C;
      case 1:
        return EnumScores.D;
    }
  }
}
