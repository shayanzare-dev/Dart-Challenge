import 'package:project/kar_amoozi/oop/alien/colors.dart';

import 'alien.dart';
import 'movement.dart';

class MartienAlien extends Alien {
  MartienAlien(
      {required super.eyesCount,
      required super.toothCount,
      required super.legCount,
      required super.skinColor,
      super.typeOfMovement = Movement.walking,
      required super.code});

  factory MartienAlien.proMartinAlien() {
    return MartienAlien(
        eyesCount: 12,
        toothCount: 1,
        legCount: 3,
        skinColor: SkinColors.blackRed,
        code: 0001);
  }

  @override
  void run() {
    print('martin alien is ${typeOfMovement.name}');
  }
}
