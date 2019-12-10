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
    return nil if head.nil?
    return @head.data if !head.nil?
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length
    if @head.nil?
      return 0
    end
    current = @head
    length = 1
    until current.next.nil?
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data)
    else
      last = self.find_last
      last.next = Node.new(data)
    end
    
  end

  def find_last
    current = @head
    until current.next.nil?
      current = current.next
    end
    return current
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last  
    return self.find_last.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_at_index(index)
    current = @head
    index.times do
      if current.nil? || current.next.nil?
        return nil
      else
        current = current.next
      end
    end
    return current.data
  end
end
