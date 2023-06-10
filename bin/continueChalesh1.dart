import 'dart:io';

List<String> nameList = [];
List<int> scoreList = [];
String? name;
String? replaceStudent;
int? number;
int? numberMenu;
int? score;
String? findName;


void main() {
  while (true) {
    print("""number menu:
        1=studentRegistration
        2=removeStudent
        3=studentEdit
        4=getStudentGrade
        5=exit""");
    numberMenu = int.tryParse(stdin.readLineSync()!);
    if (numberMenu == 1) {
      studentRegistration();
    } else if (numberMenu == 2) {
      removeStudent();
    } else if (numberMenu == 3) {
      studentEdit();
    } else if (numberMenu == 4) {
      getStudentGrade();
    } else if (numberMenu == 5) {
      break;
    } else {
      print("please valid number");
    }
  }
}

void studentRegistration() {
  print("name:");
  name = stdin.readLineSync();
  nameList.add(name!);
}

void removeStudent() {
  print("Students= $nameList");
  print("what name do you want to delete?!:");
  findName = stdin.readLineSync();
  for (int i = 0; i < nameList.length; i++) {
    if (findName == nameList[i]) {
      nameList.removeAt(i);
      print("rest of student = $nameList");
      break;
    } else if (findName != nameList[i]) {
      continue;
    } else {
      print("not found");
    }
  }
}

void studentEdit() {
  print("Students= $nameList");
  print("what name do you want to edit?!:");
  findName = stdin.readLineSync();
  print("replace student:");
  replaceStudent = stdin.readLineSync();
  for (int i = 0; i < nameList.length; i++) {
    if (findName == nameList[i]) {
      nameList[i] = replaceStudent!;
      print("$nameList");
      break;
    } else {
    print("not found");
    }
  }
}

void getStudentGrade() {
  print("score:");
  score = int.tryParse(stdin.readLineSync()!);
  scoreList.add(score!);
  print(scoreList);
}
