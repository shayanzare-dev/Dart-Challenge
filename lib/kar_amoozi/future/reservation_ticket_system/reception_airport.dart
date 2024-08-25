import 'package:project/kar_amoozi/future/reservation_ticket_system/confirmation.dart';

import 'flight.dart';
import 'ticket.dart';
import 'user.dart';

class ReceptionAirport {
  final int id;
  final String airportName;
  final List<Flight> _flights = [
    Flight(
        flightDate: DateTime(2010, 5, 10),
        origin: 'shiraz',
        destination: 'hamburg'),
    Flight(
        flightDate: DateTime(2012, 1, 10),
        origin: 'shiraz',
        destination: 'tehran'),
    Flight(
        flightDate: DateTime(2017, 1, 10),
        origin: 'tehran',
        destination: 'istanbul'),
  ];
  final List<Ticket> _tickets = [];
  final List<Ticket> _reservationTickets = [];
  final List<User> _users = [];

  ReceptionAirport({required this.id, required this.airportName});

  Future<bool> flightSearch(
          {required DateTime dateTime,
          required String origin,
          required String destination}) async =>
      _flights.any((element) =>
          element.origin == origin &&
          element.destination == destination &&
          element.flightDate == dateTime);

  void addTicket(
          {required int id,
          required int inventory,
          required int price,
          required DateTime dateTime}) =>
      _tickets.add(Ticket(
          id: id, inventory: inventory, price: price, dateTime: dateTime));

  void addUser(
          {required int id,
          required String fullName,
          required int walletInventory}) =>
      _users.add(
          User(id: id, fullName: fullName, walletInventory: walletInventory));

  void addFlight(
          {required DateTime flightDate,
          required String origin,
          required String destination}) =>
      _flights.add(Flight(
          flightDate: flightDate, origin: origin, destination: destination));

  void ticketReservation({required int ticketId, required int userId}) {
    final int userIndex = _users.indexWhere((element) => element.id == userId);

    final int ticketIndex =
        _tickets.indexWhere((element) => element.id == ticketId);

    if (ticketIndex != -1 && userIndex != -1) {
      final Ticket ticket = _tickets[ticketIndex];
      final User user = _users[userIndex];
      if (ticket.inventory > 0 && user.walletInventory >= ticket.price) {
        user.walletInventory -= ticket.price;
        _tickets.remove(ticket);
        _reservationTickets.add(ticket);
        Confirmation confirmation = Confirmation(
            targetUserName: user.fullName, dateTime: ticket.dateTime);
        print(confirmation.text);
      } else {
        print("that ticket has not value");
      }
    } else {
      print("don't find this ticket or user");
    }
  }
}
