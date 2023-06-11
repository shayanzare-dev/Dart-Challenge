import 'dart:io';

void main() {
  print("saat kari:");
  int? saatKari = int.tryParse(stdin.readLineSync()!);
  print("turn watch:");
  int? turnWatch = int.tryParse(stdin.readLineSync()!);
  print("turn number:");
  int? turnNumber = int.tryParse(stdin.readLineSync()!);
  int v = turnNumber! * turnWatch!;
  print("ساعت های ویزیت نشده $v");
  for (int i = 1; i <= turnNumber; i++) {
    if (saatKari! >= v) {
      print("نوبت بیمار شماره $turnNumber و $i روز دیگر تشریف بیاورید ");
      break;
    } else {
      v = v - saatKari;
    }
  }
}
