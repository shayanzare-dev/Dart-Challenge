class Node<E> {
  Node(nod);
}

Node<E>? createTree<E>(List<E> nodes, [int index = 0]) {
  if (index >= nodes.length) return null;
  final node = Node(nodes[index]);
  final leftChildIndex = 2 * index + 1;
  final rightChildIndex = 2 * index + 2;
  node.leftChild = createTree(nodes, leftChildIndex);
  node.rightChild = createTree(nodes, rightChildIndex);
  return node;
}

