class Button {
  final String title;
  final void Function() onPressed;
  const Button({required this.title, required this.onPressed});
}

class ButtonHandel {
  static late final void Function() onPressed;
}

void main() {
  ButtonHandel.onPressed = () {};
  Button button = Button(title: 'click me', onPressed: ButtonHandel.onPressed);
  print(button.onPressed);
}
