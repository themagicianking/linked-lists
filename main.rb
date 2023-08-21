class LinkedList
  attr_accessor :node, :value

  def initialize
    @node = Node.new
    @node.value()
  end

  def append(value)
    if @node.node.nil?
      @node.value(value)
    else
      # ???
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
  attr_accessor :node, :value

  def value(node=nil)
    @node = node
  end
end

list = LinkedList.new

list.append(3)
list.append(5)

pp list