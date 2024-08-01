import 'dart:io';

void main() {
  // الگوریتمی بنویسید که دو عدد دریافت کند ، سپس مقدار آنها را جابجا کند بدون استفاده از متغیر کمکی.
  print('input 1:');
  // 10
  int? a = int.tryParse(stdin.readLineSync()!);
  print('input 2:');
  // 20
  int? b = int.tryParse(stdin.readLineSync()!);

  a = a! + b!;
  b = a - b;
  a = a - b;
  print(a);
  print(b);
}
