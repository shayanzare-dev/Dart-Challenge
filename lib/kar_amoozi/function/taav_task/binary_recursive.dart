void main() {
  List<int> NumberList = [1, 2, 3, 64, 29, 75];
  NumberList.sort();
  print(binary(list: NumberList, target: 12) ? 'find' : 'not find');
}

// recursive
bool binary(
    {required List<int> list, required int target, bool parametrFind = false}) {
  List<int> insideList = list.toList();
  bool isFind = parametrFind;
  int start = insideList.first;
  int middle = insideList[(insideList.length - 1) ~/ 2];
  int end = insideList.last;
  if (insideList.length <= 1 || isFind == true) {
    return isFind;
  } else {
    if (target == start || target == end || target == middle) {
      isFind = true;
    } else if (target > middle) {
      insideList.removeRange(0, insideList.length ~/ 2);
    } else if (target < middle) {
      insideList.removeRange((insideList.length) ~/ 2, insideList.length);
    }
    return binary(list: insideList, parametrFind: isFind, target: target);
  }
}

int fibonachi(int start, int end) {
  int c = start + end;
  if (c > 50) {
    return c;
  }
  return fibonachi(end, c);
}

int generateTime(int startTime) {
  int sum = startTime;
  print(startTime);
  if (sum == 100) {
    return sum;
  } else {
    return generateTime(++startTime);
  }
}
