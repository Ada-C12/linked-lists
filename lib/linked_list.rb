require_relative 'node'

class LinkedList
  attr_reader :head, :tail, :length
  
  def initialize
    @head = nil
    
    # I added this, hee hee
    @tail = nil
    @length = 0
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_first(data)
    @head = Node.new(data, head)
    
    # just for fun
    @tail ||= @head
    incr_length
  end
  
  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return nil if head.nil? 
    return @head.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    curr = head
    
    until curr.nil?
      count += 1
      curr = curr.next
    end
    
    return count
  end
  
  def length_for_fun
    # O(1) space & time, b/c I did accounting everytime I added/removed a node
    return @length
  end
  
  
  
  
  
  
  
  
  
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    curr_tail = self.get_last
    @tail = Node.new(data, curr_tail)
    
    incr_length
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    curr = head
    prev = nil
    
    until curr.next.nil?
      prev = curr
      curr = curr.next
    end
    
    return @tail
  end
  
  def get_last_for_fun
    return @tail
  end
  
  # def get_last_for_fun
  #   return @tail.data
  # end
  
  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    curr_i = 0
    curr = @head
    
    return nil if curr.nil?
    
    while !curr.nil? && (index > curr_i)
      puts "looking at #{curr.data}"
      curr_i += 1
      curr = curr.next
    end
    
    if index == curr_i
      return curr.data
    else
      return nil
    end
  end
  
  
  # I added this for fun
  # O(1) space & time
  def incr_length
    @length += 1
  end
  
  def decr_length
    @length -= 1
  end
end
