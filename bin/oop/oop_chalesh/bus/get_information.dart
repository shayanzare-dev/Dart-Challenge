import 'dart:io';

import 'bus.dart';
import 'repository.dart';
import 'travel_description.dart';

class GetInformation {
  Set<int> times = {};
  Bus? bus;
  Repository repository;

  GetInformation(this.repository);

  void insertBus() {
    print('name:');
    String name = stdin.readLineSync()!;
    print('bus type: (1-vip , 2-normal)');
    int? busType = int.tryParse(stdin.readLineSync()!);
    bus = Bus.create(name: name, busType: busType!);
    repository.insertBus(bus!);
  }

  void description() {
    for (int i = 0; i < repository.busList.length; i++) {
      print('${i + 1} = ${repository.busList[i].name}');
    }
    print('which one:');
    int? number = int.tryParse(stdin.readLineSync()!);
    if (number! <= repository.busList.length) {
      print('origin:');
      String origin = stdin.readLineSync()!;
      print('destination:');
      String destination = stdin.readLineSync()!;
      print('time:');
      int? time = int.tryParse(stdin.readLineSync()!);
      if ((!times.contains(time)) && time! > 0 && time < 24) {
        times.add(time);
        print('price:');
        double? price = double.tryParse(stdin.readLineSync()!);
        TravelDescription travelDescription = TravelDescription(
            origin,
            destination,
            time,
            repository.busList[number - 1].name,
            repository.busList[number - 1].busType.value,
            price!);
        repository.travelDefinition(travelDescription);
      } else {
        print('this time is full or valid number');
      }
    } else {
      print('please valid number(0 ta ${repository.busList.length})');
    }
  }

  void ticketBook() {
    repository.travelPreview();
    
  }
}

void normalSeatCounts({required int? seatCount}) {
  for (int i = 1; i <= seatCount!; i = i + 4) {
    if (i == 25) {
      int j = i;
      print('[$j] [${j + 1}]');
      print('[${j + 2}] [${j + 3}]');
    } else {
      print('[$i] [${i + 1}]  [${i + 2}] [${i + 3}]');
    }
  }
}

void vipSeatCounts({required int seatCount}) {
  for (int i = 1; i <= seatCount; i = i + 3) {
    if (i == 16) {
      print('[$i]');
    } else {
      print('[$i]  [${i + 1}] [${i + 2}]');
    }
  }
}
