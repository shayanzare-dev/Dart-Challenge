void main() {
  String text = "shayan zare zare is gang";
  final split = text.split(" ");
  for (int i = 0;; i++) {
    String a = split[i];
    if (a.length==i) {
      print(i);
    }
  }
}
