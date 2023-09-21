import 'dart:io';

import 'bus.dart';
import 'discount.dart';
import 'other_methods.dart';
import 'repository.dart';
import 'travel_description.dart';
import 'user_profile/user_profile.dart';

class GetInformation {
  Set<int> passengerVipNumbers = {};
  Set<int> passengerNormalNumbers = {};
  Set<int> times = {};
  Bus? bus;
  Repository repository;

  GetInformation(this.repository);

  void insertBus() {
    print('name:');
    String name = stdin.readLineSync()!;
    print('bus type: (1-vip , 2-normal)');
    int? busType = int.tryParse(stdin.readLineSync() ?? 'null');
    bus = Bus.create(name: name, busType: busType!);
    repository.insertBus(bus!);
  }

  void travelDefinition() {
    if (bus != null) {
      for (int i = 0; i < repository.busList.length; i++) {
        print('${i + 1} = ${repository.busList[i].name}');
      }
      print('which one:');
      int? number = int.tryParse(stdin.readLineSync()!);
      if (number! <= repository.busList.length) {
        showCitys();
        print('origin:');
        int? origin = int.tryParse(stdin.readLineSync()!);
        print('destination:');
        int? destination = int.tryParse(stdin.readLineSync()!);
        print('time:');
        int? time = int.tryParse(stdin.readLineSync()!);
        if ((!times.contains(time)) && time! > 0 && time < 24) {
          times.add(time);
          print('price:');
          double? price = double.tryParse(stdin.readLineSync()!);
          TravelDescription travelDescription = TravelDescription(
              getCity(origin ?? 0),
              getCity(destination ?? 0),
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
    } else {
      print('no bus for travel');
    }
  }

  void ticketBook() {
    print(UserProfile.wallet);
    repository.travelPreview();
    print('which one (valid = 1 ta ${repository.descriptionList.length}):');
    int? number = int.tryParse(stdin.readLineSync()!);
    if (repository.descriptionList.containsKey(number! - 1) &&
        repository.descriptionList[number - 1]?.busType == 'vip') {
      vipSeatCounts(seatCount: bus!.seatCount!);
      print('number seats:');
      int? numberSeats = int.tryParse(stdin.readLineSync()!);
      if (!passengerVipNumbers.contains(numberSeats)) {
        if (UserProfile.wallet >=
            repository.descriptionList[number - 1]!.price) {
          passengerVipNumbers.add(numberSeats!);
          Discount.reserve(
              price: repository.descriptionList[number - 1]!.price);
          // UserProfile.wallet = UserProfile.wallet -
          //     (repository.descriptionList[number - 1]!.price * 30) / 100;
        } else {
          print('not enough money , please charge the wallet');
          UserProfile.chargeWallet();
        }
      } else {
        print('this seats is full , please choose another one');
      }
    } else {
      normalSeatCounts(seatCount: bus!.seatCount!);
      print('number seats:');
      int? numberSeats = int.tryParse(stdin.readLineSync()!);
      if (!passengerNormalNumbers.contains(numberSeats)) {
        if (UserProfile.wallet >
            repository.descriptionList[number - 1]!.price) {
          passengerNormalNumbers.add(numberSeats!);
        } else {
          print('not enough money , please charge the wallet');
          UserProfile.chargeWallet();
        }
      } else {
        print('this seats is full , please choose another one');
      }
    }
  }

  void buyTicket() {}

  void travelPreview() {
    repository.travelPreview();
  }

  void cancelTicket() {}

  void reporting() {}

  void exit() {}
}
