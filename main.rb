class LinkedList
  def initialize
    @head = Node.new
  end

  def append(value)
    if @head.value.nil?
      @head.value = value
      @head.next_node = Node.new
    elsif @head.next_node.value.nil?
      @head.next_node.value = value
    else
      node = @head.next_node
      unless node.value.nil?
        node = node.next_node
      end
      node = Node.new
      node.value = value
      puts value
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
  attr_accessor :value, :next_node
end

list = LinkedList.new

list.append(3)
list.append(4)
list.append(5)
