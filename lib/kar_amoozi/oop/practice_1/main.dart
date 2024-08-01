import 'package:project/kar_amoozi/oop/practice_1/animal.dart';
import 'package:project/kar_amoozi/oop/practice_1/cat.dart';
import 'package:project/kar_amoozi/oop/practice_1/dog.dart';
import 'package:project/kar_amoozi/oop/practice_1/fish.dart';
import 'package:project/kar_amoozi/oop/practice_1/snake.dart';

void main() {
  List<Animal> animals = [Fish(), Dog(), Snake(), Cat()];

  for (final Animal item in animals) {
    item.eat();
    item.sleep();
    if(item is Dog){

  }
  }
}
