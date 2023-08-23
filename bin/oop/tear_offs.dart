void main() {
  Arman arman = Arman(
      name: 'arman',
      massage: (String example) {
        return example;
      });
  Shayan shayan = Shayan(name: 'shayan', massage: arman.massage);
  print(shayan.massage);
}

// Tear‐Offs
class Arman {
  String name;
  final String Function(String message) massage;

  Arman({required this.name, required this.massage});
}

class Shayan {
  String name;
  final void Function(String message) massage;

  Shayan({required this.name, required this.massage});
}

String hello() {
  return 'hello shayan';
}
