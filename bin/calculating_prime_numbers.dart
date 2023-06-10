import 'dart:io';
void main(List<String> arguments) {
  print("input number:");
  int? input = int.tryParse(stdin.readLineSync()!);
  primeNumber(input!);
}

bool primeNumber(int input) {
  bool aval = true;
  for (int i = 2; i < input / 2; i++) {
    // با تقسیم بر 2 جواب همون میشه ولی سرعت برنامه دو برابر میشه
    if (input % i == 0) {
      aval = false;
      break;
    }
  }
  if (aval) {
    print("it is prime");
  } else {
    print("it is not prime");
  }
  return aval;
}
