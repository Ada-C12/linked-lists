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
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    return 0 if @head.nil?
    count = 0
    cur = @head
    until cur.nil?
      count += 1
      cur = cur.next
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head.nil?
      @head = Node.new(data, nil)
    else
      cur = @head
      while cur.next != nil
        cur = cur.next
      end
      cur.next = Node.new(data, nil)
    end
  end

  # Time complexity - O(n)
  # Space complexity O(1)
  def get_last
    cur = @head
    while cur.next != nil
      cur = cur.next
    end
    return cur.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    return nil if index > self.length-1
    count = 0
    cur = @head
    while count < index
      cur = cur.next
      count += 1
    end
    return cur.data
  end

end
