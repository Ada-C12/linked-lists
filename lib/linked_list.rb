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
    return nil if head.nil?
    return @head.data
  end
  
  # Time complexity - O(n) where n is the length of the list
  # Space complexity - O(1)
  def length
    length_counter = 0
    current = head
    until current.nil?
      current = current.next
      length_counter += 1
    end
    return length_counter
  end
  
  # Time complexity - O(n) where n is the length of the list
  # Space complexity - O(1)
  def add_last(data)
    current = @head
    if current.nil?
      @head = Node.new(data, nil)
    else 
      until current.next.nil?
        current = current.next
      end
      current.next = Node.new(data, nil)
    end
  end
  
  # Time complexity - O(n) where n is the length of the list
  # Space complexity - O(1)
  def get_last
    current = head
    until current.next.nil?
      current = current.next
    end
    return current.data
  end
  
  # Time complexity - O(n) where n is the index
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    if current.nil?
      return nil
    else
      index.times do
        current = current.next
      end
      return current.data
    end
  end
end
