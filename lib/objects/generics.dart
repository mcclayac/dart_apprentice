

class Node<T> {
  Node(this.value);
  T value;

  Node<T>? leftChild;
  Node<T>? rightChild;
}


Node<int> createIntTree() {
  final zero = Node(0);
  final one = Node(1);
  final five = Node(5);
  final seven = Node(7);
  final eight = Node(8);
  final nine = Node(9);

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild  = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;
}

Node<String> createStringTree() {
  final zero = Node('zero');
  final one = Node('one');
  final five = Node('five');
  final seven = Node('seven');
  final eight = Node('eight');
  final nine = Node('nine');

  seven.leftChild = one;
  one.leftChild = zero;
  one.rightChild  = five;
  seven.rightChild = nine;
  nine.leftChild = eight;

  return seven;

}

void main() {

  Node<int> intTree = createIntTree();
  Node<String> stringTree = createStringTree();

}