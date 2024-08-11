import '../oop/safe_string_get.dart';

void main() {
  final String input = safeStringGet(value: 'input');
  final List<String> characters = input.split(' ');
  characters.removeWhere((element) => element.isEmpty);
  final Map<String, List<String>> characterCount = {};
  for (final String char in characters) {
    if (characterCount[char[0]] != null) {
      characterCount[char[0]]!.add(char);
    } else {
      characterCount[char[0]] = [char];
    }
  }
  print(characterCount);
}
