class EmptySpace {
  final int width;
  final int height;
  final num area;

  const EmptySpace({required this.width, required this.height})
      : area = width * height;
}
