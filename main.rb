# frozen_string_literal: true

# this class implements linked lists
class LinkedList
  attr_reader :head

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
      current_value = @head.value
      @head.value = value
      node = @head.next_node
      next_value = node.value
      until node.next_node.nil?
        node.value = current_value
        current_value = next_value
        node = node.next_node
        next_value = node.value
      end
      node.value = current_value
      node.next_node = Node.new
      node.next_node.value = next_value
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
    node = @head
    until node.next_node.nil?
      previous_node = node
      node = node.next_node
    end
    previous_node.next_node = nil
  end

  def contains?(value)
    begin
      node = @head
      until node.value == value
        node = node.next_node
      end
      true
    rescue
      false
    end
  end

  def find(value)
    begin
      node = @head
      index = 0
      until node.value == value
        index += 1
        node = node.next_node
      end
      index
    rescue
      nil
    end
  end

  def to_s
    node = @head
    until node.next_node.nil?
      print "( #{node.value} ) -> "
      node = node.next_node
    end
    print "( #{node.value} ) -> "
  end
end

# this class implements nodes
class Node
  attr_accessor :value, :next_node
end
