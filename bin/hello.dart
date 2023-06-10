import 'dart:io';

enum UnitsEnum { edari, fani, mali }

void main() {
  addInformation();
}

void addInformation() {
  List<Map<String, dynamic>> information = [];
  print("name :");
  String name = stdin.readLineSync()!;
  print("salary :");
  int? salary = int.tryParse(stdin.readLineSync()!);
  print("unit :");
  String unit = stdin.readLineSync()!;
  information.add({"name": name, "salary": salary, "unit": unit});
  print(information);
}

UnitsEnum unit() {
  int? unit = int.tryParse(stdin.readLineSync()!);
  if (unit != null && (unit == 1 || unit == 2 || unit == 3)) {
    switch (unit) {
      case 1:
        return UnitsEnum.fani;
      case 2:
        return UnitsEnum.mali;
      case 3:
        return UnitsEnum.edari;
    }
  } else {
    print("valid number");
  }
}
