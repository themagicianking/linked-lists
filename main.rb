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
      until node.next_node.nil?
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
    end
  end

  def size
    node = @head
    number_of_nodes = 1
    until node.next_node.nil?
      number_of_nodes += 1
      node = node.next_node
    end
    number_of_nodes
  end

  def head
    @head
  end

  def tail
    node = @head
    until node.next_node.nil?
      node = node.next_node
    end
    node
  end

  def at(index)
    begin
      node = @head
      number_of_nodes = 0
      until number_of_nodes == index
        number_of_nodes += 1
        node = node.next_node
      end
      node.value
    rescue
      nil
    end
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

list.append(2)
list.append(3)
list.append(4)
list.append(5)
#list.prepend("this should be first")

pp list.at(4)
