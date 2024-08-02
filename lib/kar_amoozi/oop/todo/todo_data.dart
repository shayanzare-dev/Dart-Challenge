import 'package:project/kar_amoozi/oop/safe_number_get_input.dart';
import 'package:project/kar_amoozi/oop/todo/status.dart';
import 'package:project/kar_amoozi/oop/todo/todo.dart';

class TodoData {
  static List<String> descriptionList = [];
  static List<String> titleList = [];
  static List<Status> statuses = [];
  static List<Todo> toDoList = [];

  static void insertTodo(Todo todo) {
    descriptionList.add(todo.description);
    titleList.add(todo.title);
    statuses.add(todo.status);
    toDoList.add(todo);
  }

  static void showTodosList() {
    toDoList.forEach(print);
  }

  static void doneToDoList() {
    showTodosList();
    final int selectedTodo = safeGetNumber(
        printValue: 'which one?:(valid number 1 ta ${toDoList.length})');

    final Status newStatus = Status();
    newStatus.doneStatus();
    toDoList[selectedTodo - 1].status = newStatus;
  }

  static void removeOneTodo() {
    showTodosList();
    final int selectedTodo = safeGetNumber(
        printValue: 'which one?:(valid number 1 ta ${toDoList.length})');
    toDoList.removeAt(selectedTodo - 1);
    print(toDoList);
  }

  static void editToDoList() {
    showTodosList();
    final int selectedTodo = safeGetNumber(
        printValue: 'which one?:(valid number 1 ta ${toDoList.length})');
    final newTodo = Todo.getTodoData();
    toDoList[selectedTodo - 1] = newTodo;
  }
}
