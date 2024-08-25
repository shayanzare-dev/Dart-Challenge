import 'reception_airport.dart';

Future<void> main() async {
  final ReceptionAirport receptionAirport =
      ReceptionAirport(id: 1, airportName: 'Atlanta Hartsfield-Jackson');
  Future<bool> test = receptionAirport.flightSearch(
      dateTime: DateTime(2021, 7, 7), origin: 'shiraz', destination: 'tehran');
  Future<bool> test2 = receptionAirport
      .flightSearch(
          dateTime: DateTime(2027, 7, 7),
          origin: 'tehran',
          destination: 'istanbul')
      .catchError((e) {
    print(e);
  }).timeout(Duration(seconds: 6));

  print(await test);

  print(await test2);
}
