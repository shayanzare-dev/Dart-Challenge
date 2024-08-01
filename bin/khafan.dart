Map checkCharacters = {};


void numberUsedCharacter(List<String> list1) {
  for (final String item in list1) {
    if (item != ' ') {
      if (checkCharacters.containsKey(item)) {
        checkCharacters[item] = checkCharacters[item]! + 1;
      } else {
        checkCharacters[item] = 1;
      }
    }
  }
}
