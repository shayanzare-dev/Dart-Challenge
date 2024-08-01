import 'dart:io';

void main() {
  int height = safeGet(title: 'height');
  int width = safeGet(title: 'width');
  createShape(height: height, width: width);
}

void createShape({required int height, required int width}) {
  String star = '*';
  String space = ' ';
  if (checkRightTriangle(height: height, width: width)) {
    print('width = $width');
    print('height = $height');
    int multiply = (width / height).round();
    for (int i = 1; i <= height; i++) {
      if (i == 1) {
        print(space * (width - i) + ((star * i)));
      } else {
        print(space * (width - i) + ((star * i) * (multiply)));
      }
    }
  }
}

bool checkRightTriangle({required int height, required int width}) {
  bool isValid = false;
  while (true) {
    if (height > width) {
      print('must width bigger than height');
      height = safeGet(title: 'height');
      width = safeGet(title: 'width');
      print(height);
      print(width);
    } else {
      isValid = true;
      return isValid;
    }
  }
}

int safeGet({String? title}) {
  title ??= '';
  while (true) {
    print('input $title:');
    String? input = stdin.readLineSync();
    if (input != null && input.isNotEmpty) {
      int? number = int.tryParse(input);
      if (number != null) {
        return number;
      }
    } else {
      continue;
    }
  }
}
