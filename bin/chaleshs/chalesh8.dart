import 'dart:io';

void main() {
  int sum = 0;
  print('input:');
  int? input = int.tryParse(stdin.readLineSync()!);
  List<String> listCharacter = input.toString().split('');
  for (final String element in listCharacter) {
    int concatNumber = int.parse(element);
    sum += concatNumber;
  }
  print(sum);
}
