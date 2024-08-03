enum Menu {
  insertBus(1, 'insertBus'),
  travelDefinition(2, 'travelDefinition'),
  ticketBook(3, 'ticketBook'),
  buyTicket(4, 'buyTicket'),
  travelPreview(5, 'travelPreview'),
  cancelTicket(6, 'cancelTicket'),
  reporting(7, 'reporting'),
  exit(8, 'exit');

  final int value;
  final String title;

  const Menu(this.value, this.title);

  factory Menu.getValue({required int value}) {
    switch (value) {
      case 1:
        return Menu.insertBus;
      case 2:
        return Menu.travelDefinition;
      case 3:
        return Menu.ticketBook;
      case 4:
        return Menu.buyTicket;
      case 5:
        return Menu.travelPreview;
      case 6:
        return Menu.cancelTicket;
      case 7:
        return Menu.reporting;
      case 8:
        return Menu.exit;
      default:
        return Menu.insertBus;
    }
  }
}
