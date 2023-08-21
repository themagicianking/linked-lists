class LinkedList
  attr_accessor :node, :value, :next_node

  def initialize
    @node = Node.new
    @node.value = nil
    @node.next_node = nil
  end

  def append(value)
    if @node.value.nil?
      @node.value = value
    elsif @node.next_node.nil?
      @node.next_node = Node.new
      @node.next_node.value = value
    else
      @node.next_node.next_node.value = value
    end
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end

class Node
  attr_accessor :node, :value, :next_node

  def value
    @value
  end

  def next_node
    @next_node
  end
end

list = LinkedList.new

list.append(3)
list.append(5)
list.append(9)

list.node.value