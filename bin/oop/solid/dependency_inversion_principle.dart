/// اصل وارونگی وابستگی
/// کلاس اینترفیس به کلاس های سطج پایین تر خودش وایسته نیست ولی اونا به کلاس ااینترفیس وابسته هستند.
abstract class User {
  String? name;
  String? lastName;
  int? age;

  void getInformation();
}

class UserAdmin implements User {
  String? fatherName;
  int? nationalCode;
  @override
  int? age;

  @override
  String? lastName;

  @override
  String? name;

  @override
  void getInformation() {
    // TODO: implement getInformation
  }
}
class UserNormal implements User{
  @override
  int? age;

  @override
  String? lastName;

  @override
  String? name;

  @override
  void getInformation() {
    // TODO: implement getInformation
  }

}