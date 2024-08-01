import 'dart:io';

List<List<String>> toDoList = [];

void main() {
  while (true) {
    int? inputMenu = safeGet();
    switch (inputMenu) {
      case 1:
        insertTodo();
        break;
      case 2:
        showTodosList(toDoList);
        break;
      case 3:
        doneToDoList();
        break;
      case 4:
        removeOneTodo();
        break;
      case 5:
        editToDoList();
        break;
      case 6:
        return;
      default:
        print('invalid number');
    }
  }
}

int? safeGet() {
  print('''
  1-insert todos
  2-show toDos list
  3-choose for done
  4-choose for remove
  5-choose for edit title,edit toozihat
  6-exit
  ''');

  final String? input = stdin.readLineSync();
  int? number;
  if (input != null) {
    number = int.tryParse(input);
  }
  return number;
}

void insertTodo() {
  List<String> titleList = [];
  List<String> descriptionList = [];
  List<String> statusList = [];
  String status = 'pending';
  print('title:');
  String? title = stdin.readLineSync();
  print('description:');
  String? description = stdin.readLineSync();
  titleList.add(title!);
  descriptionList.add(description!);
  statusList.add(status);
  toDoList.add([title, description, status]);
}

void showTodosList(List<List<String>> toDoList) {
  for (int i = 0; i < toDoList.length; i++) {
    print('${i + 1}-${toDoList[i]}');
  }
}

void doneToDoList() {
  showTodosList(toDoList);
  print('which one?:(valid number 1 ta ${toDoList.length})');
  int? select = int.tryParse(stdin.readLineSync()!);
  toDoList[select! - 1][2] = 'done';
}

void removeOneTodo() {
  showTodosList(toDoList);
  print('which one?:(valid number 1 ta ${toDoList.length})');
  int? select = int.tryParse(stdin.readLineSync()!);
  toDoList.removeAt(select! - 1);
  print(toDoList);
}

void editToDoList() {
  showTodosList(toDoList);
  print('which one?:(valid number 1 ta ${toDoList.length})');
  int? select = int.tryParse(stdin.readLineSync()!);

  print('title:');
  String? title = stdin.readLineSync();
  print('description:');
  String? description = stdin.readLineSync();
  toDoList[select! - 1][0] = title!;
  toDoList[select - 1][1] = description!;
}
