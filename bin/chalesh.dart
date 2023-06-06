import 'dart:io';

List<String> nameList = [];
List<int> scoreList = [];
String? name;
int? number;
int? score;
String? findName;
int? numberExit;

void main() {
  while (true) {
    print("number:");
    number = int.tryParse(stdin.readLineSync()!);
    for (int i = 1; i <= number!; i++) {
      print("name:");
      name = stdin.readLineSync();
      nameList.add(name!);
      print("score:");
      score = int.tryParse(stdin.readLineSync()!);
      scoreList.add(score!);
    }

    print("find name:");
    findName = stdin.readLineSync();
    for (int i = 0; i < nameList.length; i++) {
      if (findName == nameList[i]) {
        print("score ${nameList[i]} = ${scoreList[i]}");
        break;
      } else {
        print("not found");
      }
    }

    print("insert number 1 to exit (number 2  to continue):");
    numberExit = int.tryParse(stdin.readLineSync()!);
    if (numberExit == 1) {
      break;
    } else {
      continue;
    }
  }
}
