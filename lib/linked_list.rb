require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    node = Node.new(data, nextNode = @head)
    @head = node 
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if @head == nil
      return nil
    end
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current_node = @head
    until current_node == nil do 
      count += 1 
      current_node = current_node.next 
    end
    return count
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    node = Node.new(data, nextNode = nil)
    if @head == nil 
      @head = node 
      return 
    end
    last_node = @head 
    until last_node.next == nil do 
      last_node = last_node.next 
    end
    last_node.next = node  
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    last_node = @head 
    until last_node.next == nil do 
      last_node = last_node.next 
    end
    return last_node.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current_index = 0 
    current_node = @head
    until index == current_index 
      current_index += 1
      if current_node == nil 
        return nil
      end
      current_node = current_node.next 
    end
    return current_node.data
  end
end
