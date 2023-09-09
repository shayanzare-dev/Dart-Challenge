import 'dart:io';

int column = 8;
int line = 8;

void main() {
  print('input:');
  int? input = int.tryParse(stdin.readLineSync()!);
  if (input! > 0 && input < 9) {
    a1(input);
    a2(input);
    a3(input);
    a4(input);
    a5(input);
    a6(input);
    a7(input);
    a8(input);
  } else {
    print('please valid number(1-8)');
  }
}

///  8 تا حالت
void a1(int input) {
  column = input - 2;
  line = input - 1;
}

void a2(int input) {
  column = input - 1;
  line = input - 2;
  print('column = $column');
  print('line = $line');
}

void a3(int input) {
  column = input + 1;
  line = input - 2;
  print('column = $column');
  print('line = $line');
}

void a4(int input) {
  column = input + 2;
  line = input - 1;
  print('column = $column');
  print('line = $line');
}

void a5(int input) {
  column = input - 2;
  line = input + 1;
  print('column = $column');
  print('line = $line');
}

void a6(int input) {
  column = input + 2;
  line = input + 1;
  print('column = $column');
  print('line = $line');
}

void a7(int input) {
  column = input - 1;
  line = input + 2;
  print('column = $column');
  print('line = $line');
}

void a8(int input) {
  column = input + 1;
  line = input + 2;
  print('column = $column');
  print('line = $line');
}
