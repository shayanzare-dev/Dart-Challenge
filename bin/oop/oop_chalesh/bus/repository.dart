import 'bus.dart';
import 'interface_project.dart';
import 'travel_description.dart';

class Repository with InterfaceProject {
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
  void buyTicket() {
    // TODO: implement buyTicket
  }

  @override
  void cancelTicket() {
    // TODO: implement cancelTicket
  }

  @override
  void exit() {
    // TODO: implement exit
  }

  @override
  void reporting() {
    // TODO: implement reporting
  }

  @override
  void ticketBook() {
    // TODO: implement ticketBook
  }

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
}
