import 'dart:io';
int sum = 0;
int sumScore = 0;
void main() {
  getStudentNumber();
}

int getStudentNumber() {
  int? studentNumber;
  print("student number:");
  studentNumber = int.tryParse(stdin.readLineSync()!)!;
  getBookNumber(studentNumber);
  return studentNumber;
}

int getBookNumber(int studentNumber) {
  int? bookNumber;
  for (int i = 1; i <= studentNumber; i++) {
    print("book number:$i");
    bookNumber = int.tryParse(stdin.readLineSync()!)!;
    getBookUnit(bookNumber);
    getBookScore(bookNumber);
  }
  return bookNumber!;
}

int? getBookUnit(int bookNumber) {
  int? bookUnit;
  for (int i = 1; i <= bookNumber; i++) {
    print("book unit:$i");
    bookUnit = int.tryParse(stdin.readLineSync()!)!;
    sum = bookUnit + sum;
  }
  print("sum unit : $sum");
  return bookUnit;
}

int? getBookScore(int bookNumber) {
  int? bookScore;
  for (int i = 1; i <= bookNumber; i++) {
    print("book score:$i");
    bookScore = int.tryParse(stdin.readLineSync()!)!;
    sumScore = bookScore + sumScore;
  }
  print("sum score = $sumScore");
  checkScore();
  return bookScore;
}

String checkScore() {
  String? checkScore;
  if (sumScore == 1) {
    checkScore = "D";
  } else if (sumScore == 2) {
    checkScore = "C";
  } else if (sumScore == 3) {
    checkScore = "B";
  } else if (sumScore == 4 || sumScore > 4) {
    checkScore = "A";
  } else {
    print("please valid number");
  }
  print("score = $checkScore");
  return checkScore!;
}
