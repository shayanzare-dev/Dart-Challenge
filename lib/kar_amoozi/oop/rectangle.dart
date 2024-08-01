class Rectangle {
  int _width;
  int _height;

  int get width => _width;

  int get height => _height;

  int get area => _height * width;

  set width(int width) {
    if (width > 0) {
      _width = width;
    } else {
      print('invalid number');
    }
  }

  set height(int height) {
    if (height > 0) {
      _height = height;
    } else {
      print('invalid number');
    }
  }

  Rectangle({required int width, required int height})
      : _width = width,
        _height = height;
}
