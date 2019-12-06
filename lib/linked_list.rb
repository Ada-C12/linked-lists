require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    current = head
    @head = Node.new(data, current)
  end 
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if head.nil?
    return head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    node = head
    count = 0
    
    return 0 if head == nil
    
    until node == nil
      count += 1
      node = node.next
    end
    return count
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if head.nil?
      @head = Node.new(data)
      return head.data
    end
    
    current = head
    until current.next == nil
      current = current.next
    end
    
    node = Node.new(data)
    current.next = node
    return node.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = head
    
    until current.next == nil
      current = current.next
    end
    
    return current.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if head == nil
    current = head
    index.times do 
      current = current.next
    end
    
    return current.data
  end
  
end
