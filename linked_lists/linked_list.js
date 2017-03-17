class LinkedList {
  constructor() {
    this.head = null
  }


  push(value) {
    if(this.head === null) {
      this.head = new Node(value)
    } else {
      var tail = this.findTail()

      tail.next = new Node(value)
    }
  }

  findTail(node = this.head) {
    while (node.next) {
      node = node.next
    }
    return node
  }
}


class Node {
  constructor(value) {
    this.value = value
    this.next = null
  }
}

ll = new LinkedList
ll.push('dog');
ll.push('cat');
ll.push('cats');
console.log(ll)