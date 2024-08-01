void main() {
  List<num> numbersList = [2, 3, 55, 66, 102, 12, 111, 21, 1];
  print(findyekiMoondeBeAkhar(charactersList: numbersList));
}

num? findyekiMoondeBeAkhar({required List<num> charactersList}) {
  num? max;
  num? secondMax;
  for (int i = 0; i < charactersList.length; i++) {
    if (max != null && secondMax != null) {
      if (charactersList[i] > max) {
        secondMax = max;
        max = charactersList[i];
      }
    } else {
      max = charactersList[i];
      secondMax = charactersList[i];
    }
  }
  return secondMax;
}
