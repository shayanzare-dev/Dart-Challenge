
void main() {
  int j = 999;
  for (int i = 999; i >= 1; i--) {
    int a = j * i;
    if (testPalindromic(a)) {
      break;
    }
  }
}

bool testPalindromic(int a) {
  bool palindromic = true;
  final a1 = a.toString().split("");
  if (a1.first == a1.last) {
    print("bozorgtarin palindromic = $a");
  } else {
    palindromic = false;
  }
  return palindromic;
}
