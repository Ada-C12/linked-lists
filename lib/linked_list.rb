require_relative 'node'

class LinkedList
  attr_reader :head, :tail

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

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0 
    return count if head.nil?

    current = head 
    until current.nil?
      current = current.next
      count += 1 
    end 

    return count 
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if head.nil?
      @head = Node.new(data, nil)
    else 
      current = head 
      while !current.next.nil?
        current = current.next
      end 
  
      current.next = Node.new(data, nil)
    end 
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return nil if head.nil?

    current = head 

    until current.next.nil?
      current = current.next
    end 

    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if head.nil?

    current = head 
    count = 0 

    until count == index 
      current = current.next 
      count += 1
    end 

    return current.data
  end
end
