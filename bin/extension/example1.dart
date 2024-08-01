extension convertToList on int {
  List<int> toList() {
    List<String> listStr = this.toString().split('');
    List<int> listInt = [];
    for (var value in listStr) {
      listInt.add(int.parse(value));
    }
    return listInt;
  }
}

extension AmazingList<T> on List<T> {
  List<T> operator -() => this.reversed.toList();

  int get customHashCode {
    return this.hashCode.toList().removeAt(0);
  }
}

extension ToTime on DateTime {
  DateTime get toTime => DateTime(this.hour);
}
