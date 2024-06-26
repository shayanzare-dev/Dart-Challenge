import 'bus.dart';
import 'interface_project.dart';
import 'travel_description.dart';

class Repository implements InterfaceProject {
  late List<Bus> busList;

  late Map<int, TravelDescription> descriptionList;

  Repository({required this.busList, required this.descriptionList});

  @override
  void insertBus(Bus bus) {
    busList.add(bus);
  }

  @override
  void travelDefinition(TravelDescription travelDescription) {
    descriptionList[descriptionList.length] = travelDescription;
  }

  @override
  void ticketBook() {
    // TODO: implement ticketBook
  }

  @override
  void buyTicket() {}

  @override
  void travelPreview() {
    for (int i = 0; i < descriptionList.length; i++) {
      print(''' 
      ${i + 1}-['origin:${descriptionList[i]?.origin}'
      'origin:${descriptionList[i]?.destination}'
      'time:${descriptionList[i]?.time}'
      'name:${descriptionList[i]?.busName}'
      'price:${descriptionList[i]?.price}']
    ''');
    }
  }

  @override
  void cancelTicket() {
    // TODO: implement cancelTicket
  }

  @override
  void reporting({required Bus bus, required num pricePur}) {
    bus.finalPrice += pricePur;
  }

  @override
  void exit() {
    // TODO: implement exit
  }
}
