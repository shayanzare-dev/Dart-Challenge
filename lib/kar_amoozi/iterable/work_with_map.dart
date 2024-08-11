import '../oop/safe_string_get.dart';

void main() {
  final String input = safeStringGet(value: 'input');
  final List<String> characters = input.split(' ');
  final Map<String, int> characterCount = {};
  for (final String char in characters) {
    if (characterCount[char] != null) {
      int count = characterCount[char]!;
      characterCount[char] = ++count;
    } else {
      characterCount[char] = 1;
    }
  }
  print(characterCount);
}
