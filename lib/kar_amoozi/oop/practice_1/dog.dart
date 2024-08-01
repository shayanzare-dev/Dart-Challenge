import 'package:project/kar_amoozi/oop/practice_1/animal.dart';

class Dog implements Animal {
  @override
  void eat() {
    print('dog is eating');
  }

  @override
  void sleep() {
    print('dog is sleeping');
  }
}
