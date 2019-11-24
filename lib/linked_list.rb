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
    if head
      return @head.data
    else
      return head
    end 
  end

  # Time complexity - O(n) -where n is the amount of nodes 
  # Space complexity - O(1)
  def length
    length = 0
    current = @head
    
    until current.nil?
      length += 1
      current = current.next
    end

    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if head
      last = self.find_last
      last.next = Node.new(data, nil)
    else
      add_first(data)
    end
  end

  # Helper method to find the last node in the list
  def find_last
    current = @head

    until current.next.nil?
      current = current.next
    end

    return current
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    return find_last.data
  end

  # Time complexity - O(n) - where n is equal to index
  # Space complexity - O(1)
  def get_at_index(index)
    if index >= self.length
      return nil
    elsif index == 0
      return @head.data
    else
      current = @head

      index.times do
        current = current.next
      end

      return current.data
    end
  end
end
