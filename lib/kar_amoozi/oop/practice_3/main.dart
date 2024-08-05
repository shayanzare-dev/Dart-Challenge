import 'area.dart';
import 'empty_space.dart';
import 'location.dart';
import 'paint.dart';
import 'paint_job.dart';

void main() {
  const PaintJob paintJob = PaintJob(
      location: Location(factor: 1, name: 'test'),
      area: Area(area: 100, emptySpace: [
        EmptySpace(width: 12, height: 5),
        EmptySpace(width: 5, height: 5)
      ]),
      paint: Paint(name: 'paint', cost: 6));

  print(paintJob.resultCalculate());

  print('pain => ${Paint(name: 'paint', cost: 6)} \t hello');
}
