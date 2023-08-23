enum Animal {
  cat(catSound: 'miooo'),
  dog(dogSound: 'hop hop'),
  bird(birdSound: 'jick jick');

  final String? catSound;
  final String? dogSound;
  final String? birdSound;

  const Animal({this.catSound, this.dogSound, this.birdSound});

  static void makeSound() {
    print(Animal.cat.catSound);
    print(Animal.dog.dogSound);
    print(Animal.bird.birdSound);
  }
}

void main() {
  Animal.makeSound();
}
