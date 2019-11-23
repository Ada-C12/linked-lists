require_relative 'node'

class LinkedList
  attr_reader :head
  attr_reader :size
  
  def initialize
    @head = nil
    @size = 0
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, head)
    @size +=1
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if head
      return @head.data 
    end
    return nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def length
    return size
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_last
    
  end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    
  end
end
