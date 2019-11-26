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
    return head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if head.nil?

    length = 0
    current = head
    until current.nil?
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if head.nil?
      add_first(data)
      return head.data
    end
    
    current = head
    current = current.next until current.next.nil?
    
    new_end = Node.new(data)
    current.next = new_end
    return new_end.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
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
    count = 0
    current = head
    until current.nil?
      return count if current.data == index
      count += 1
      current = current.next
    end
    return length
  end
end
