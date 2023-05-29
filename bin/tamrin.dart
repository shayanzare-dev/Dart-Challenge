import 'dart:io';

void main(List<String> arguments) {
}

bool primeNumber(int input) {
  bool aval = true;
  for (int i = 1; i <= input; i++) {
    if (input % i == 0) {
      aval = false;
    }
  }
  // if (aval) {
  //   print("it is prime");
  // } else {
  //   print("it is not prime");
  // }
  return aval;
}
