require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity O(1)
  # Space complexity O(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    if !(@head.nil?)
      return @head.data
    end
    @head
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    temp = @head
    count = 0

    while temp 
      count += 1
      temp = temp.next
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data, @head)
    
    if @head.nil?
      @head = new_node
      return
    end

    last = @head
    while last.next
      last = last.next
    end

    last.next = new_node
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = @head

    while !current.next.nil?
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
