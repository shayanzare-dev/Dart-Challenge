import 'alien.dart';
import 'colors.dart';
import 'movement.dart';

class SaturnAlien extends Alien {
  SaturnAlien(
      {required super.eyesCount,
      required super.toothCount,
      required super.legCount,
      required super.skinColor,
      super.typeOfMovement = Movement.Crawling,
      required super.code});

  factory SaturnAlien.proSaturnAlien() {
    return SaturnAlien(
        eyesCount: 1,
        toothCount: 1,
        legCount: 2,
        skinColor: SkinColors.brown,
        code: 10087);
  }

  @override
  void run() {
    print('saturn alien is ${typeOfMovement.name}');
  }
}
