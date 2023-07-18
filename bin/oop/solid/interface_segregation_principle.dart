/// اصل جدا سازی اینترفیس ها
abstract class Animal {
  void makeSound();

  void move();
}
abstract class SwimAbleAnimal extends Animal{
  void swim();
}

abstract class FlyAbleAnimal extends Animal{
  void fly();
}
class Fish implements SwimAbleAnimal{
  @override
  void makeSound() {

  }

  @override
  void move() {
    // TODO: implement move
  }

  @override
  void swim() {
    // TODO: implement swim
  }

}