void main() {
  final List<int> stack = [3, 21, 43, 12, 43];
  get(stack: stack);
}

// insert
void push({required List<int> stack, required int item}) {
  stack.add(item);
}

// get Information
void get({required List<int> stack}) {
  print(stack.last);
}

// remove
int pop({required List<int> stack}) {
  int last = stack.last;
  stack.removeLast();
  return last;
}
