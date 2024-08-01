void main() async {
  /// این کد میگه اگه تابع گرفتن دیتا از سرور خروجیش ی مقدار بود اونو چاپ کن و اگر نبود و ی ارور بود اون ارور رو چاپ کن

  getDataFromServer().then((value) => print('data is :$value')).catchError((e) {
    print(('error is :$e'));
  });
}

Future<String> getDataFromServer() {
  return Future.delayed(Duration(seconds: 2))
      .then((value) => throw Exception('exception'));
}
