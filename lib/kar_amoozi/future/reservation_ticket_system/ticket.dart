class Ticket {
  final int id;
  final int inventory;
  final int price;
  final DateTime dateTime;

  const Ticket(
      {required this.id,
      required this.inventory,
      required this.price,
      required this.dateTime});
}
