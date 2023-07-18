import 'dart:convert';

void main() {
  ConvertorClass convertorClass =
      ConvertorClass.sringToJson(stringJson: '{"name":"shayan","age":17}');
  print(convertorClass.age);
  print(convertorClass.name);
}

class ConvertorClass {
  String? name;
  int? age;

  ConvertorClass(this.name, this.age);

  ConvertorClass.sringToJson({required String stringJson}) {
    Map<String, dynamic> json = jsonDecode(stringJson);
    name = json['name'];
    age = json['age'];
  }
}
