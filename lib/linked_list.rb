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
    if @head == nil
      return nil
    else
      return @head.data
    end
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    current = @head
    length = 0
    until current == nil 
      length += 1
      current = current.next
    end
    return length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head == nil
      @head = Node.new(data, nil)
    else
      current = @head
      until current.next == nil
        current = current.next
      end
      current.next = Node.new(data, nil)
    end
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
    current = head
    count = 0
    if current == nil
      return nil
    end
    until count == index
      count += 1
      current = current.next
    end
    return current.data    
  end
end
