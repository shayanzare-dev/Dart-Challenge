class Confirmation {
  static int idGenerator = 0;
  final int id;
  final String text;
  final String targetUserName;
  final DateTime dateTime;

  Confirmation({required this.targetUserName, required this.dateTime})
      : id = ++idGenerator,
        text =
            'congratulation $targetUserName \n your reservation for $dateTime}';
}
