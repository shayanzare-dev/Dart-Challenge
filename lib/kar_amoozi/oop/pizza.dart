class Pizza {
  String? name;
  String size;
  late List<String> topping;

  Pizza({required this.name, required this.size});

  Pizza.margarita({required this.size}) {
    topping = ['potato , sos'];
    this.name = 'margarita';
  }

  Pizza.pepperoni({required this.size}) {
    topping = ['potato , sos'];
    this.name = 'pepperoni';
  }

  Pizza.filito({required this.size}) {
    topping = ['potato , sos'];
    this.name = 'pepperoni';
  }
}
