void main() {
  // print(palindromicChecker(value: 'moms'));
  // print(secondPalindromicChecker(value: 'moms'));
  print(thirdPalindromicChecker(value: 'madam'));
}

/// the first solution
bool palindromicChecker({required String value}) {
  bool isPalindromic = true;
  String reversedValue = '';
  for (int i = value.length - 1; i >= 0; i--) {
    reversedValue += value[i];
  }
  for (int i = 0; i < value.length; i++) {
    if (value[i] != reversedValue[i]) {
      isPalindromic = false;
    }
  }
  return isPalindromic;
}

/// the second solution
bool secondPalindromicChecker({required String value}) {
  bool isPalindromic = true;
  final List<String> reversedValues = value.split('').reversed.toList();
  for (int i = 0; i < value.length; i++) {
    if (reversedValues[i] != value[i]) {
      isPalindromic = false;
    }
  }
  return isPalindromic;
}

/// the third solution
bool thirdPalindromicChecker({required String value}) {
  bool isPalindromic = true;
  final List<String> charactersList = value.split('');
  while (charactersList.isNotEmpty) {
    int start = 0;
    int end = charactersList.length - 1;
    if (charactersList[start] != charactersList[end]) {
      isPalindromic = false;
      break;
    } else {
      charactersList.removeAt(start);
      charactersList.removeAt(end - 1);
      if (charactersList.length == 1) {
        break;
      }
    }
  }
  return isPalindromic;
}
