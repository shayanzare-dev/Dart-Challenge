abstract class SmartHome {
  String name;
  String brandType;
  bool isOn = false;

  SmartHome({required this.name, required this.brandType});

  void on() => isOn = true;

  void off() => isOn = false;

  @override
  String toString() {
    return 'name => $name , brand => $brandType , status => $isOn ';
  }
}
