require_relative "node"

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
    return @head if @head.nil?

    return @head.data
  end

  # Time complexity - O(n) n is the size of the list
  # Space complexity - O(1)
  def length
    count = 0
    current = head
    until current.nil?
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - O(n) n is the length of the list
  # Space complexity - O(1)
  def add_last(data)
    if !@head
      @head = Node.new(data)
    else
      current = @head
      while current.next
        current = current.next
      end
      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n) where n is the length of the list
  # Space complexity - O(1)
  def get_last
    return nil unless @head
    current = @head

    while current.next
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n) where n is the index
  # Space complexity - O(1)
  def get_at_index(index)
    return nil unless @head

    current = @head

    index.times do
      return nil unless current.next
      current = current.next
    end
    return current.data
  end
end
