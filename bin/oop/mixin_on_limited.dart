import 'dart:io';

mixin Input on Test {
  late final int input;
}

class Test {
  String name;
  int age;

  Test({required this.name, required this.age});
}

class GetNumber extends Test with Input {
  GetNumber({required super.name, required super.age}) {
    print('input number:');
    input = int.tryParse(stdin.readLineSync()!)!;
  }
}

void main() {
  final GetNumber getNumber = GetNumber(name: 'shayan', age: 17);
  print(getNumber.input);
}
