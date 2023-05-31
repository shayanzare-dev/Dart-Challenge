import 'dart:io';

void main(List<String> arguments) {
  print("input number:");
  int? input = int.tryParse(stdin.readLineSync()!);
  primeNumber(input!);
}

bool primeNumber(int input) {
  bool aval = true;
  for (int i = 2; i < input; i++) {
    if (input % i == 0) {
      aval = false;
    }
  }
  if (aval) {
    print("it is prime");
  } else {
    print("it is not prime");
  }
  return aval;
}
