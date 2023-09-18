class TravelDescription {
  String origin;
  String destination;
  int time;
  double price;
  String busName;
  String busType;

  TravelDescription(this.origin, this.destination, this.time, this.busName,
      this.busType, this.price) {
    if (busType == 'vip') {
      price = (price * 1.4);
    }
  }
}