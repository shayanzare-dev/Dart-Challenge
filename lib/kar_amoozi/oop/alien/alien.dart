import 'colors.dart';
import 'movement.dart';

abstract class Alien {
  final int eyesCount;
  final int toothCount;
  final int legCount;
  int _secretCode;
  final SkinColors skinColor;
  final Movement typeOfMovement;

  void set secretCode(int code) => _secretCode = code;

  Alien(
      {required this.eyesCount,
      required this.toothCount,
      required this.legCount,
      required code,
      required this.skinColor,
      required this.typeOfMovement})
      : this._secretCode = code;

  void run();

  @override
  String toString() {
    return '{eyesCount: $eyesCount, toothCount: $toothCount, legCount: $legCount, skinColor: $skinColor}';
  }
}
