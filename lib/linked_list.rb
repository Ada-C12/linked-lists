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
  
  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
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
