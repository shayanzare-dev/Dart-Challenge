abstract class Library {
  void showTables();

  void miz();

  void makhzan();
}

class Student implements Library {
  @override
  void makhzan() {
    // TODO: implement makhzan
  }

  @override
  void miz() {
    // TODO: implement miz
  }

  @override
  void showTables() {
    print('show tables');
  }
}

class Student2 implements Library {
  @override
  void makhzan() {
    // TODO: implement makhzan
  }

  @override
  void miz() {
    // TODO: implement miz
  }

  @override
  void showTables() {}
}

void show(Library library) => library.showTables();

void main() {
  final Student student = Student();
  show(student);
}
