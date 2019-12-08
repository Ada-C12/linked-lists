require_relative 'node'

class LinkedList
  attr_reader :head
  attr_reader :size
  attr_reader :tail
  
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, head)
    @tail = head if !tail
    
    @size +=1
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.data if head
    return nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def length
    return size
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data)
    
    @tail.next = new_node if tail    
    @head = new_node if !head
    
    @tail = new_node
    @size += 1
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    return tail.data if tail
    return nil
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = head
    count = 0
    while current && count < size
      return current.data if count == index
      count += 1
      current = current.next
    end
    return nil
  end
end
