
enum MenuEnum {
  insertBus(1, 'insertBus'),
  travelDefinition(2, 'travelDefinition'),
  ticketBook(3, 'ticketBook'),
  buyTicket(4, 'buyTicket'),
  travelPreview(5,'travelPreview'),
  cancelTicket(6,'cancelTicket'),
  reporting(7,'reporting'),
  exit(8,'exit');

  final int value;
  final String title;

  const MenuEnum(this.value, this.title);

factory MenuEnum.getValue({required int value}){
  switch(value){
    case 1:
      return MenuEnum.insertBus;
    case 2:
      return MenuEnum.travelDefinition;
    case 3:
      return MenuEnum.ticketBook;
    case 4:
      return MenuEnum.buyTicket;
    case 5:
      return MenuEnum.travelPreview;
    case 6:
      return MenuEnum.cancelTicket;
    case 7:
      return MenuEnum.reporting;
    default:
      return MenuEnum.exit;
  }
}
}