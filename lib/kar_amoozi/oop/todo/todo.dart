import 'package:project/kar_amoozi/oop/safe_string_get.dart';
import 'package:project/kar_amoozi/oop/todo/status.dart';

class Todo {
  final String title;
  final String description;
  Status status;

  Todo({required this.title, required this.description, required this.status});

  static Todo getTodoData() {
    String title = safeStringGet(value: 'title');
    String description = safeStringGet(value: 'description');

    return Todo(title: title, description: description, status: Status());
  }

  @override
  String toString() {
    return 'Todo{title: $title, description: $description, status: $status}';
  }
}
