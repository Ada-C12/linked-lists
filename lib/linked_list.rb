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
  
  # Time complexity - O(1); since we store the first node as 'head' we can access it in O(1) time.
  # Space complexity - O(1); We are not using addition storage to retrieve and return the first node.
  def get_first
    return nil if head.nil?
    return @head.data
  end
  
  # Time complexity - O(n) where n is the number of nodes. 
  # Space complexity - O(1); I think this is O(1) because storage size does not vary by any input. 
  def length
    return 0 if head.nil?
    
    count = 1
    position = @head
    
    while position.next != nil
      count += 1
      position = position.next
    end
    
    return count
  end
  
  # Time complexity - O(n) because we have to traverse the entire linked list in order to find the tail where
  # we want to add a node.
  # Space complexity - O(1); storage does not scale in relation to the input.
  def add_last(data)
    if head.nil?
      @head = Node.new(data, head)
    else
      tail = @head
      while tail.next != nil
        tail = tail.next
      end
      tail.next = Node.new(data)
    end
  end
  
  # Time complexity - O(n); because we have to traverse the entire list to return the value of the last node.
  # Space complexity - O(1)
  def get_last
    last = @head
    
    while last.next != nil
      last = last.next
    end
    return last.data
  end
  
  # Time complexity - O(n) where n is the number of nodes. In the worst case scenario, we would traverse the
  # entire linked list in order to return the item at the corresponding index.
  # Space complexity - O(1); storage is not scaling in relation to the input.
  def get_at_index(index)
    count = 0
    position = @head
    
    while count <= index
      if position.nil?
        return nil
      elsif count == index 
        return position.data
      else
        count += 1
        position = position.next
      end
    end
  end
end
