base class{
  
}
void main() {

  List<int> list = [2, 53, 12];
  int? sum;
  try {
    sum = sum! + list[0];
  } catch (e) {
    print(e);
  } finally {
    print('test');
  }

  print('object');
}
