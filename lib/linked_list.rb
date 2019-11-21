require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, head)    
  end
  
  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def get_first
    return nil if head.nil?
    
    return @head.data
  end
  
  # Time complexity - O(n). N is the length of the list.
  # Space complexity - 0(1)
  def length
    return 0 if head.nil?
    
    current = head  
    length = 1
    
    while !current.next.nil?
      length += 1
      current = current.next
    end
    
    return length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data, nil)
    
    if head.nil?
      @head = new_node  
    else
      current = head
      
      while !current.next.nil?
        current = current.next
      end
      
      current.next = new_node
    end
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = head
    
    while !current.next.nil?
      current = current.next
    end
    
    return current.data
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    
  end
end
