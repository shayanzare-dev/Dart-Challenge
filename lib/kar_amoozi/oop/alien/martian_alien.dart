import 'package:project/kar_amoozi/oop/alien/colors.dart';

import 'alien.dart';
import 'movement.dart';

class MartienAlien extends Alien {
  final bool horn;

  MartienAlien(
      {required super.eyesCount,
      required super.toothCount,
      required super.legCount,
      required this.horn,
      required super.skinColor,
      super.typeOfMovement = Movement.walking,
      required super.code});

  factory MartienAlien.proMartinAlien() {
    return MartienAlien(
        eyesCount: 12,
        toothCount: 1,
        legCount: 3,
        horn: true,
        skinColor: SkinColors.blackRed,
        code: 0001);
  }

  @override
  void run() {
    print('martin alien is ${typeOfMovement.name}');
  }

  @override
  String toString() {
    super.toString();
    return 'MartienAlien{horn: $horn}';
  }
}
