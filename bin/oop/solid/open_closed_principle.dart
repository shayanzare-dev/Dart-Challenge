/// اصل باز و بسته
/// از لحاظ توسعه ی خصوصیات و رفتار کلاس مادر باز است ولی از لحاظ تغییر و دستکاری داخلشون بسته هست.
abstract class Animal {
  String? name;
  String? lastName;

  void sound();
}

class Panda implements Animal {
  @override
  String? lastName = 'gogo';

  @override
  String? name = 'panii';

  @override
  void sound() {
    // TODO: implement sound
  }
}

class Dog implements Animal {
  @override
  String? lastName;

  @override
  String? name = 'teddy';

  @override
  void sound() {
    // TODO: implement sound
  }
}
