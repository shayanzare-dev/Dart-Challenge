void main() {
  Map<String, int> map = {'a': 1};

  map['a'] = 21;
  map['shayan'] = 100;
  print(map);

  MapEntry<String, int> mapEntry = MapEntry('arman', 12);

  map.addEntries([mapEntry]);
}
