import 'package:project/kar_amoozi/oop/alien/alien.dart';
import 'package:project/kar_amoozi/oop/alien/colors.dart';
import 'package:project/kar_amoozi/oop/alien/martian_alien.dart';
import 'package:project/kar_amoozi/oop/alien/saturn_alien.dart';

void main() {
  final Alien martinAlien = MartienAlien(
      eyesCount: 1,
      toothCount: 2,
      legCount: 12,
      skinColor: SkinColors.blackRed,
      code: 4001);

  final Alien saturnAlien = SaturnAlien(
      eyesCount: 4,
      toothCount: 5,
      legCount: 2,
      skinColor: SkinColors.black,
      code: 58);

  final Alien saturnAlienPro = SaturnAlien.proSaturnAlien();
  final Alien martinAlienPro = SaturnAlien.proSaturnAlien();
}
