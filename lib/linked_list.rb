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
    @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    length = 0
    curr = @head
    until curr.nil? do
      length += 1
      curr = curr.next
    end
    return length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      add_first(data)
    else
      curr = @head
      until curr.next.nil? do
        curr = curr.next
      end
      curr.next = Node.new(data, nil)
    end
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    curr = @head
    until curr.next.nil? do
      curr = curr.next
    end
    return curr.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    curr = @head
    i = 0
    while i < index
      return nil if curr.nil?
      curr = curr.next
      i += 1
    end
    
    return curr.data if curr
    return nil
  end
end
