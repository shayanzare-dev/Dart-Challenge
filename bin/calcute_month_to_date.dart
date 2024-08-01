import 'dart:io';

void main() {
  const int yearToday = 1403;
  int sum = 0;
  int age = 0;
  while (true) {
    print('Day:');
    int? day = int.tryParse(stdin.readLineSync()!);
    print('Month:');
    int? month = int.tryParse(stdin.readLineSync()!);
    print('Year birth:');
    int? yearBirth = int.tryParse(stdin.readLineSync()!);
    sum = month != 1 ? (month! - 1) * 30 : (month! * 30);
    sum = sum + day!;
    age = yearToday - (yearBirth! + 1);
    print('age => $age year and $sum days');
  }
}

