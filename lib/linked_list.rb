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
    return @head if @head.nil?
    
    return @head.data
  end

  # Time complexity - O(n) where n is the length of the linked list
  # Space complexity - O(1)
  def length
    nodes_count = 0
    current = @head

    until current.nil?
      nodes_count += 1
      current = current.next
    end

    return nodes_count
  end

  # Time complexity - O(n) where n is the length of the linked list
  # Space complexity - O(1)
  def add_last(data)
    current = @head

    if @head.nil?
      add_first(data)
      return
    end

    (length - 1).times do 
      current = current.next
    end

    current.next = Node.new(data)
  end

  # Time complexity - O(n) where n is the length of the linked list
  # Space complexity - O(1)
  def get_last
    current = @head

    return nil if current == nil
    
    (length - 1).times do 
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n) where n is the length of the linked list
  # Space complexity - O(1)
  def get_at_index(index)
    current = @head

    return nil if index > (length - 1) || index < 0

    index.times do 
      current = current.next
    end

    return current.data
  end
end
