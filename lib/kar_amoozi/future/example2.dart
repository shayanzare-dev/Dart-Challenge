import 'dart:math';

void main() {
  _fetchInformation()
      .then(
        (value) => print(value),
      )
      .catchError((error) => print('oops'));
}

Future<String> _fetchInformation() async {
  await Future.delayed(Duration(seconds: 2));
  final bool hasError = Random().nextBool();
  if (hasError) {
    throw Error();
  } else {
    return 'info';
  }
}
