class InformationUser {
  String? name;
  int? age;

  late String value = calculation();

// چون متغیر رو از نوع late تعریف کردیم تا زمانی که صداش نزدیم مقدار دهی نمیشه
  String calculation() => '***calculation users***';
}

void main(List<String> arguments) {
  InformationUser informationUser = InformationUser();
  informationUser.value;
  // الان تابع calculation مقدار دهی میشود چون صداش زدیم و همراه با فراخوانی شی مقدار دهی نشد.
}
