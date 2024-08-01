import 'dart:io';

int repeatNumber = 0;

void main() {
  print('number1:');
  int? number1 = int.tryParse(stdin.readLineSync()!);

  print('number2:');
  int? number2 = int.tryParse(stdin.readLineSync()!);
  var convertedNumber2 = number2.toString().split('');

  calculate(convertedNumber2, number1!);
  print(repeatNumber);
}

void calculate(List<String> convertedNumber2, int number1) {
  // base case
  if (!convertedNumber2.contains(number1.toString())) {
    return;
  } else {
    // recursive case
    if (convertedNumber2.contains(number1.toString())) {
      repeatNumber++;
      convertedNumber2.remove(number1.toString());
      return calculate(convertedNumber2, number1);
    }
  }
}
