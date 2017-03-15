class LinkedList

  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    @head = Node.new(value) if @head.nil?

    tail = find_tail
    tail.next = Node.new(value)
  end

  def find_tail(node = @head)
    return node unless node.next
    find_tail(node.next)
  end
end

class Node

  attr_reader :value
  attr_accessor :next

  def initialize(value)
    @value = value
    @next = nil
  end
end


require "pry"; binding.pry
""