import 'colors.dart';
import 'movement.dart';

abstract class Alien {
  final int eyesCount;
  final int toothCount;
  final int legCount;
  int _secretCode;
  final SkinColors skinColor;
  final Movement typeOfMovement;

  int get secretCode => _secretCode;

  Alien(
      {required this.eyesCount,
      required this.toothCount,
      required this.legCount,
      required int code,
      required this.skinColor,
      required this.typeOfMovement})
      : this._secretCode = code;

  void run();

  @override
  String toString() {
    return '{eyesCount: $eyesCount, toothCount: $toothCount, legCount: $legCount, skinColor: $skinColor}';
  }
}
