import 'package:project/kar_amoozi/oop/practice_3/location.dart';
import 'package:project/kar_amoozi/oop/practice_3/paint.dart';

import 'area.dart';

class PaintJob {
  final Location location;
  final Area area;
  final Paint paint;

  const PaintJob(
      {required this.location, required this.area, required this.paint});

  num resultCalculate() {
    final num result = paint.cost * area.area * location.factor;
    return result;
  }
}
