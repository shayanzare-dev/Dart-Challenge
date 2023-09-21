import 'dart:io';

import 'enums/iran_citys.dart';
import 'enums/menu.dart';
import 'get_information.dart';

void normalSeatCounts({required int seatCount}) {
  for (int i = 1; i <= seatCount; i = i + 4) {
    if (i == 25) {
      print('[$i] [${i + 1}]');
      i = 27;
      print('[$i] [${i + 1}]');
      i = 25;
    } else {
      print('[$i] [${i + 1}]  [${i + 2}] [${i + 3}]');
    }
  }
}

void vipSeatCounts({required int seatCount}) {
  for (int i = 1; i <= seatCount; i = i + 3) {
    if (i == 16) {
      print('[$i]');
      i = 14;
    } else {
      print('[$i]  [${i + 1}] [${i + 2}]');
    }
  }
}

String getCity(int number) {
  while (true) {
    switch (number) {
      case 1:
        return Citys.gilan.value;
      case 2:
        return Citys.mazandaran.value;
      case 3:
        return Citys.azarbayjan.value;
      case 4:
        return Citys.hamedan.value;
      case 5:
        return Citys.kerman.value;
      case 6:
        return Citys.khoozestan.value;
      case 7:
        return Citys.fars.value;
      case 8:
        return Citys.khorasan.value;
      case 9:
        return Citys.esfahan.value;
      case 10:
        return Citys.kordestan.value;
      default:
        return 'null';
    }
  }
}

void showCitys() {
  print('''1-gilan , 2-mazandaran , 3-azarbayjan
      4-hamedan , 5-kerman , 6-khoozestan
      7-fars , 8-khorasan , 9-esfahan , 10-kordestan''');
}

void showMenu() {
  print('''
  1-insert bus , 2-travelDefinition , 3-ticketBook
  4-buyTicket , 5-travelPreview , 6-cancelTicket
  7-reporting , 8-exit''');
}

void getMenu(GetInformation getInformation) {
  while (true) {
    showMenu();
    print('menu:');
    int? number = int.tryParse(stdin.readLineSync()!);
    final Menu menu = Menu.getValue(value: number!);
    switch (menu) {
      case Menu.insertBus:
        getInformation.insertBus();
        break;

      case Menu.travelDefinition:
        getInformation.travelDefinition();
        break;

      case Menu.ticketBook:
        getInformation.ticketBook();
        break;

      case Menu.buyTicket:
        getInformation.buyTicket();
        break;

      case Menu.travelPreview:
        getInformation.travelPreview();
        break;

      case Menu.cancelTicket:
        getInformation.cancelTicket();
        break;

      case Menu.reporting:
        getInformation.reporting();
        break;

      case Menu.exit:
        getInformation.exit();
        break;
      default:
        print('please valid number(1-8)');
    }
  }
}
