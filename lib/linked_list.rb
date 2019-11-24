require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1), will always be the same no matter the size of the data(list)
  # Space complexity - O(1), will always be the same no matter the size of the data(list)
  def add_first(data)
    @head = Node.new(data, @head)
  end
  
  # Time complexity - O(1), will always be the same no matter the size of the data(list)
  # Space complexity - O(1), will always be the same no matter the size of the data(list)
  def get_first
    return nil if @head.nil?
    
    return @head.data
  end
  
  # Time complexity - O(n), will run based on the size of the list
  # Space complexity - O(1), storing only length and current
  def length
    return 0 if @head.nil?
    
    length = 1
    current = @head
    
    until current.next.nil?
      length += 1
      current = current.next
    end
    
    return length
  end
  
  # Time complexity - O(n), must go through entire list to find the end
  # Space complexity - O(1), just storing current and making one new node
  def add_last(data)
    return add_first(data) if @head.nil?
    
    current = @head
    
    until current.next.nil?
      current = current.next
    end
    
    new_node = Node.new(data, nil)
    
    current.next = new_node
    
  end
  
  # Time complexity - O(n), must go through entire list to find the end
  # Space complexity - O(1), storing current
  def get_last
    return nil if @head.nil?
    
    current = @head
    
    until current.next.nil?
      current = current.next
    end
    
    return current.data
  end
  
  # Time complexity - O(n), worst case, go through entire list
  # Space complexity - O(1), just storing i and current
  def get_at_index(index)
    return nil if @head.nil?
    return nil if index > length
    
    i = 0
    current = @head
    
    until i == index
      current = current.next
      i+=1
    end
    
    return current.data
    
  end
end
