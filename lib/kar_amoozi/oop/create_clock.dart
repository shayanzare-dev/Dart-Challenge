import 'dart:io';

void main() {
  second(30, 0);
}

int second(int lastTarget, int startSecond) {
  startSecond++;
  print(startSecond);
  sleep(Duration(seconds: 1));
  if (startSecond == lastTarget) {
    return startSecond;
  }
  return second(lastTarget, startSecond);
}
