import 'dart:io';

void main() {
  const int height = 20;
  const int width = 6;
  const String star = '*';
  const String space = ' ';
  for (int j = 1; j <= width; j++) {
    for (int h = 1; h <= height; h++) {
      if ((j == 1 || j == width)) {
        stdout.write(star);
      } else {
        if (h == 1 || h == height) {
          stdout.write(star);
        } else {
          stdout.write(space);
        }
      }
    }
    print('');
  }
}
