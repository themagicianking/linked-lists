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
      unless node.next_node.nil?
        node = node.next_node
      end
      node.next_node = Node.new
      node.next_node.value = value
    end
  end

  def prepend(value)
    if @head.value.nil?
      @head.value = value
      @head.next_node = Node.new
    elsif @head.next_node.value.nil?
      @head.next_node = Node.new
      @head.next_node.value = @head.value
      @head.value = value
    else
      current_value = @head.value
      @head.value = value
      node = @head.next_node
      unless node.value.nil?
        next_value = node.value
        node.value = current_value
        current_value = next_value
        node = node.next_node
      end
      node = Node.new
      node.value = current_value
    end
  end

  def size
  end

  def head
    @head
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
list.append(6)
list.prepend("this should be first")

pp list.head.next_node.next_node.next_node.value
