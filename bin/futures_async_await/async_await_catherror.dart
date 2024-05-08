void main() async {
  getDataFromServer().then((value) => print('data is :$value'));

}

Future<String> getDataFromServer() {
  return Future.delayed(Duration(seconds: 2)).then((value) => 'shayan zare');
}
