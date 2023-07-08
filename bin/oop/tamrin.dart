void main() {
  UserNormal userNormal = UserNormal(age: 23, favorite: 'gold');
}

class UserNormal extends UserAdmin {
  UserNormal({required int age, required String favorite})
      : super(name: 'arman', lastName: 'zare', type: 'normal');

  @override
  void activity() {
    print('user normal $name and $lastName is activity');
  }
}

class UserAdmin {
  String? name;
  String? lastName;
  String? type;

  UserAdmin({this.name, this.lastName, this.type}) {
    print("instance");
  }

  void activity() {
    print('$name and $lastName is activity');
  }
}
