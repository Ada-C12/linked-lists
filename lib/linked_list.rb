require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    temp = Node.new(data)
    temp.next = @head
    @head = temp
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
    if @head == nil
      return 0
    end
    
    length = 1
    current = @head
    
    while current.next != nil
      length += 1
      current = current.next
    end
    return length 
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    
    temp = Node.new(data)
    current = @head
    
    if @head == nil
      @head = temp
      return
    elsif current.next == nil
      current.next = temp
      return
    else
      current = self.last_node
      current.next = temp
    end
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    
    current = @head
    
    if @head == nil
      return nil
    end
    current = self.last_node    
    return current.data
    
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    
    current = @head
    
    if index >= self.length
      return nil
    end
    
    count = 0
    
    until count == index
      count += 1
      current = current.next
    end
    
    return current.data
    
  end
  
  def last_node
    current = @head 
    while current.next != nil
      current = current.next
    end
    return current
  end
  
end