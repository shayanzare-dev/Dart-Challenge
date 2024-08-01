import 'package:project/kar_amoozi/oop/engine.dart';

class Car {
  Engine engine;

  Car() : engine = Engine();

  void start() {
    engine.start(true);
  }

  void end() {
    engine.stop(false);
  }
}
