abstract class DataRepository {
  factory DataRepository({required bool input}) {
    if (input == true) {
      return DataServer(welcomMessage: 'hello shayan');
    } else {
      return FakeServer();
    }
  }

  void message();
}

class DataServer implements DataRepository {
  String? welcomMessage;

  DataServer({required this.welcomMessage}) {
    message.call();
  }

  @override
  void message() {
    print(welcomMessage ?? 'null message');
  }
}

class FakeServer implements DataRepository {
  FakeServer() {
    message.call();
  }

  @override
  void message() {
    print('hello user');
  }
}

void main() {
  DataRepository(input: true);
}
