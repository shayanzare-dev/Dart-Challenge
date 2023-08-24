import 'dart:io';

class TwoSum {
  int sum() {
    List<int> list = [];
    int target = 0;
    print('num1:');
    int? num1 = int.tryParse(stdin.readLineSync()!);
    print('num2:');
    int? num2 = int.tryParse(stdin.readLineSync()!);
    list.addAll([num1!, num2!]);
    target = list[0] + list[1];
    return target;
  }
}
