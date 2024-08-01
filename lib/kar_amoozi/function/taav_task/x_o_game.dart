import 'dart:io';

List<List<String>> characters = [
  ['   |', '   |', '   |'],
  ['   |', '   |', '   |'],
  ['   |', '   |', '   |']
];

void main() {
  for (int i = 1; true; i++) {
    String shape = i % 2 == 0 ? 'o' : '*';
    print('row:');
    int rowInput = getData();
    print('column:');
    int columnInput = getData();
    create(rowInput, columnInput, shape: shape);
    if (isWinner(characters, shape: shape)) {
      break;
    }
  }
}

bool isWinner(List<List<String>> characters, {required String shape}) {
  bool isWinner = false;
  for (int i = 0; i < characters.length; i++) {
    if (characters[i][0] == '   $shape' &&
            characters[i][1] == '   $shape' &&
            characters[i][2] == '   $shape' ||

        ///
        characters[0][i] == '   $shape' &&
            characters[1][i] == '   $shape' &&
            characters[2][i] == '   $shape' ||

        ///
        characters[0][2] == '   $shape' &&
            characters[1][1] == '   $shape' &&
            characters[2][0] == '   $shape' ||

        ///
        characters[0][0] == '   $shape' &&
            characters[1][1] == '   $shape' &&
            characters[2][2] == '   $shape') {
      print('$shape is winner :)');
      isWinner = true;
      break;
    }
  }
  return isWinner;
}

void create(int row, int column, {required String shape}) {
  for (int c = 1; c <= 3; c++) {
    for (int r = 1; r <= 3; r++) {
      if (r == row && c == column) {
        characters[c - 1][r - 1] = '   $shape';
        stdout.write('   $shape');
      } else {
        stdout.write(characters[c - 1][r - 1]);
      }
    }
    print('');
    print('  -----------');
  }
}

int getData() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      int resultNumber = int.parse(input);
      if (resultNumber > 0 && resultNumber <= 3) {
        return resultNumber;
      } else {
        print('please valid number');
      }
    } else {
      stdout.write('input again:');
      input = stdin.readLineSync();
    }
  }
}
