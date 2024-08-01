import 'package:project/kar_amoozi/oop/practice_3/area.dart';
import 'package:project/kar_amoozi/oop/practice_3/empty_space.dart';
import 'package:project/kar_amoozi/oop/practice_3/location.dart';
import 'package:project/kar_amoozi/oop/practice_3/paint.dart';
import 'package:project/kar_amoozi/oop/practice_3/paint_job.dart';

void main() {
  PaintJob paintJob = PaintJob(
      location: Location(factor: 1, name: 'test'),
      area: Area(area: 100,
          emptySpace: [
            EmptySpace(width: 12, height: 5),
            EmptySpace(width: 5, height: 5)
          ]),
      paint: Paint(name: 'roghani', cost: 6));

  print(paintJob.resultCalculate());
}
