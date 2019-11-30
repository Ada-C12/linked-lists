require_relative 'node'

class LinkedList
  attr_reader :head
  attr_accessor :tail, :length
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, head)
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if head.nil? 
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    curr = head
    
    until curr.nil?
      count += 1
      curr = curr.next
    end
    
    return count
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    curr_tail = self.get_last_node
    
    if !curr_tail && !head
      self.add_first(data)
    else
      curr_tail.next = Node.new(data)
    end
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    last_node = self.get_last_node
    return last_node.data if last_node
    return nil
  end
  
  # Time = O(n)
  # space = O(1)
  def get_last_node
    return nil if !head
    
    curr = head
    prev = nil    
    
    until curr.nil?
      prev = curr
      curr = curr.next
    end
    
    return prev
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    curr_i = 0
    curr = @head
    
    return nil if curr.nil?
    
    while !curr.nil? && (index > curr_i)
      curr_i += 1
      curr = curr.next
    end
    
    if index == curr_i
      return curr.data
    else
      return nil
    end
  end
end