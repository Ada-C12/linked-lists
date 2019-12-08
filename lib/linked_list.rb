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
  
  # Time complexity - O(1) 
  # Space complexity - O(1) 
  def get_first
    return nil if @head.nil?
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1) 
  def length
    counter = 0
    current = @head
    while current != nil
      current = current.next
      counter += 1
    end 
    return counter 
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = @head
    if current == nil 
      @head = Node.new(data, head) 
    else
      while current.next != nil 
        current = current.next
      end 
      current.next = Node.new(data)
    end
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head
    return nil if current == nil
    while current.next != nil
      current = current.next
    end 
    return current.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    return nil if current == nil
    index.times do 
      return nil if current == nil 
      current = current.next
    end 
    return current.data
  end
end