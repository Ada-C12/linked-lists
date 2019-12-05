require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if @head.nil?
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    len = 0
    until current == nil
      len += 1
      current = current.next
    end
    return len
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      return @head = Node.new(data)
    end
    
    prev_node = nil
    current = @head
    until current == nil
      prev_node = current
      current = current.next
    end
    prev_node.next = Node.new(data)
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if @head.nil?
    
    prev_node = nil
    current = @head
    until current == nil
      prev_node = current
      current = current.next
    end
    return prev_node.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    count = 0
    current = @head
    until count == index || current == nil
      current = current.next
      count += 1
    end
    return nil if current.nil?
    return current.data
  end
end
