import 'dart:io';

void main() {
  int? a = int.tryParse(stdin.readLineSync()!);
  Map<Map<String, int>, int> a2 = {
    {'shayan': a!}: 34
  };
  print(a2[32]);
}
