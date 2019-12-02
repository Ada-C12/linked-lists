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
    return @head.data
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
    count = 0
    current = @head
    until current.nil?
      current = current.next
      count +=1
    end
    return count
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data, nil)
    current = head
    if head.nil?
      @head = new_node
      last = head
    else
      while current != nil
        last = current
        current = current.next
      end
      last.next = new_node
    end
    return new_node.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = head
    if head.nil?
      return head
    else
      while current != nil
        last = current
        current = current.next
      end
    end
    return last.data
  end
  
  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = head
    count = 0
    if head.nil?
      return head
    else
      while count != index
        current = current.next
        count += 1
      end
    end
    return current.data
  end
end
