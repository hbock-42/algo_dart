void printReversedLinkList() {
  Node node = Node(0, Node(1, Node(2, Node(3, null))));
  print(node);
  print(reverseLinkedList(node));
}

class Node {
  final Node next;
  final int value;
  const Node(this.value, this.next);

  @override
  toString() => '$value $next';
}

Node reverseLinkedList(Node list) {
  Map<Node, Node> from = Map<Node, Node>();
  var current = list;
  Node reversed;
  while (current != null) {
    from[current.next] = current;
    reversed = Node(current.value, reversed);
    current = current.next;
  }
  return reversed;
}
