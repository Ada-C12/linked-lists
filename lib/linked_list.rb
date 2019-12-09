require_relative 'node'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    node = Node.new(data, nextNode = @head)
    @head = node 
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
    count = 0
    current_node = @head
    until current_node == nil do 
      count += 1 
      current_node = current_node.next 
    end
    return count
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
