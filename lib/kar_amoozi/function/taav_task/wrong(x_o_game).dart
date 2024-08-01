import 'dart:io';

enum ShapeType { start, circle }

void main() {
  List<int> rowListStar = [];
  List<int> columnListStar = [];
  List<int> rowListCircle = [];
  List<int> columnListCircle = [];
  for (int count = 1; true; count++) {
    if (count % 2 == 0) {
      rowListCircle.add(getData());
      columnListCircle.add(getData());
    } else {
      rowListStar.add(getData());
      columnListStar.add(getData());
    }
    createXoTable(
        rowListStar: rowListStar,
        columnListStar: columnListStar,
        rowListCircle: rowListCircle,
        columnLiCircle: columnListCircle,
        shape: count % 2 == 0 ? ShapeType.circle : ShapeType.start);
  }
}

int getData() {
  while (true) {
    stdout.write('input (from 1 to 3):');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      int resultNumber = int.parse(input);
      if (resultNumber > 0 && resultNumber <= 3) {
        return resultNumber;
      } else {
        print('please valid number');
      }
    } else {
      stdout.write('input (from 1 to 3)');
      input = stdin.readLineSync();
    }
  }
}

void createXoTable(
    {required List<int> rowListStar,
    required List<int> columnListStar,
    required List<int> rowListCircle,
    required List<int> columnLiCircle,
    required ShapeType shape}) {
  List<int> row;
  List<int> column;
  String shapeValue;
  if (shape == ShapeType.circle) {
    row = rowListCircle;
    column = columnLiCircle;
    shapeValue = 'o';
  } else {
    shapeValue = '*';
    row = rowListStar;
    column = columnListStar;
  }
  for (int c = 1; c <= 3; c++) {
    for (int r = 1; r <= 3; r++) {
      if (row.contains(r) && row.contains(c)) {
        stdout.write('  $shapeValue');
      } else {
        stdout.write('  |');
      }
    }
    print('');
    print(' --------');
  }
}
