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
    length = 0
    
    while current
      length += 1
      current = current.next
    end
    
    return length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      return @head = Node.new(data)
    end
    
    previous = nil
    node = @head
    
    while node
      previous = node
      node = node.next
    end
    previous.next = Node.new(data)
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    previous = nil
    node = @head
    
    while node
      previous = node
      node = node.next
    end
    return previous.data
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    i = 0
    node = @head

    return nil if node.nil?

    until i == index
      node = node.next
      i += 1
    end
    return node.data
  end
end
