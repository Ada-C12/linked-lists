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
    return nil if @head == nil
    return @head.data
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
  # Space complexity - O(1)
  def length
    return 0 if @head == nil
    current = @head
    length = 1
    until current.next == nil
      current = current.next
      length += 1
    end
    return length
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
  # Space complexity - O(1)
  def add_last(data)
    if @head == nil
      @head = Node.new(data, nil)
    else
      current = @head
      until current.next == nil
        current = current.next
      end
      current.next = Node.new(data, nil)
    end
  end

  # Time complexity - O(n), where n is the number of nodes in the linked list
  # Space complexity - O(1)
  def get_last
    current = @head
    until current.next == nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n), where n is index
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head
    index.times do
      if current == nil 
        return nil
      else
        current = current.next
      end
    end
    return current.data
  end
end
