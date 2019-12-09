require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - o(1)
  # Space complexity - o(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - o(1)
  # Space complexity - o(1)
  def get_first
    return nil if head.nil?
    return @head.data
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def length
    return 0 if @head.nil?
    current = @head
    count = 0
    while current != nil
      count += 1
      current = current.next
    end
    return count
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def add_last(data)
    new_node = Node.new(data)
    if @head.nil?
      add_first(data)
    else 
      current = @head 
      while current.next != nil
       current = current.next
      end
      current.next = new_node
    end
  end

  # Time complexity - o(n)
  # Space complexity - o(1)
  def get_last
    current = @head
    while current.next != nil
      current = current.next
    end
    return current.data
  end

  # Time complexity - o(n)
  # Space complexity - o(n)
  def get_at_index(index)
    current = @head 
    return nil if current.nil?
    index.times do 
      current = current.next
    end
    return current.data
  end
end