import 'package:project/kar_amoozi/oop/enum/paint_type.dart';

void main() {
  final PaintType paintType = PaintType.pelastic;
  final List<PaintType> paintList = PaintType.values;
  paintList.forEach((element) {
    print(element.index);
    print(element.name);
  });


}
