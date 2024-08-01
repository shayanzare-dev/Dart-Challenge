import 'dart:io';

import 'package:project/kar_amoozi/oop/todo/todo.dart';
import 'package:project/kar_amoozi/oop/todo/todo_data.dart';

void main() {
  while (true) {
    int inputMenu = safeGet();
    switch (inputMenu) {
      case 1:
        final Todo todo = Todo.getTodoData();
        TodoData.insertTodo(todo);
        print('todo is add');
        break;
      case 2:
        TodoData.showTodosList();
        break;
      case 3:
        TodoData.doneToDoList();
        break;
      case 4:
        TodoData.removeOneTodo();
        break;
      case 5:
        TodoData.editToDoList();
        break;
      case 6:
        return;
      default:
        print('invalid number');
    }
  }
}

int safeGet() {
  while (true) {
    print('''
  1-insert todos
  2-show toDos list
  3-choose for done
  4-choose for remove
  5-choose for edit title,edit toozihat
  6-exit
  ''');
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
