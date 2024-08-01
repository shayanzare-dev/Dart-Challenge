import 'dart:core';
import 'dart:io';

enum EnumHelperType { k1, k2, k3, k4 }

Map<String, List<dynamic>> helpList = {};

class Company {
  String? companyName;
  int? inventoryCompany;
  Map<String, List<dynamic>>? helpListCompany;

  Company({required this.companyName,required this.inventoryCompany,required this.helpListCompany});

  void getInformation() {
    print('helper name:');
    String? helperName = stdin.readLineSync();
    print('price Helper:');
    int? priceHelper = int.tryParse(stdin.readLineSync()!);
    print('helper type:');
    String helperType = stdin.readLineSync()!;
    helpListCompany?.addAll({
      helperType: [helperName, priceHelper]
    });
  }
}

void main() {
  print('company name:');
  String? companyName = stdin.readLineSync()!;
  Company company = Company(
      inventoryCompany: 0,
      companyName: companyName,
      helpListCompany: {});
  while (true) {
    print('1-add help , 2-view help list , 3-view help , 4-exit');
    int? input = int.tryParse(stdin.readLineSync()!);
    switch (input) {
      case 1:
        company.getInformation();
        helpList.addAll(company.helpListCompany!);
        break;
      case 2:
        print(helpList);
        break;
      case 3:
        print(helpList.keys);
        break;
      case 4:
        return;
    }
  }
}
