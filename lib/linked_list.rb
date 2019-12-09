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
  
  # Time complexity - ?
  # Space complexity - ?
  def get_first
    if @head == nil
      return nil
    else
      return @head.data
    end
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
