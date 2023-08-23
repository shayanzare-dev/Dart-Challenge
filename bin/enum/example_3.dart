enum Season {
  paeez(4),
  zemestan(4),
  bahar(4),
  tabestan(4);

  final int number;

  int get monthCount =>
      Season.paeez.number +
      Season.zemestan.number +
      Season.bahar.number +
      Season.tabestan.number;

  const Season(this.number);
}

void main() {
  final season = Season.bahar;
  print(season.monthCount);
}
