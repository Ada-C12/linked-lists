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
    # current = head
    # head = new_node
    # new_node.next_node = current
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
    return 0 if @head == nil

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
    current = @head

    if current.nil?
      @head = Node.new(data, head)
    else
      until current.next.nil?
        current = current.next
      end
    
      current.next = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head
    return nil if @head.nil?
    
    until current.next.nil?
      current = current.next
    end
    
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if @head.nil?

    current = @head

    index.times do
      current = current.next
    end

    return current.data
  end
end
