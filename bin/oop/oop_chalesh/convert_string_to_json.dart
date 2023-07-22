import 'dart:convert';

void main() {
  ConvertorClass convertorClass =
      ConvertorClass.stringToJson(stringJson: '{"name":"shayan","age":17}');
  print(convertorClass.age);
  print(convertorClass.name);
}

class ConvertorClass {
  String? name;
  int? age;

  ConvertorClass(this.name, this.age);

  ConvertorClass.stringToJson({required String stringJson}) {
    Map<String, dynamic> json = jsonDecode(stringJson);
    name = json['name'];
    age = json['age'];
  }
}
