import 'dart:io';

void main(List<String> arguments) {
  print("input number:");
  int? input = int.tryParse(stdin.readLineSync()!);
  scrollCustomize(input!);
}

int scrollCustomize(int input) {
  int sum = 0;
  for (int i = 1; i <= input; i++) {
    if (isPrime(i)) {
      sum = i + sum;
      print("$i = ${isPrime(i)}");
    }
  }
  print("we had sum = $sum");
  return input;
}

bool isPrime(int input) {
  bool aval = true;
  for (int i = 2; i < input; i++) {
    if (input % i == 0) {
      aval = false;
    }
  }
  return aval;
}
