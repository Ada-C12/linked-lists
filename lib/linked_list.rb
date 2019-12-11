require_relative "node"

class LinkedList
  attr_reader :head
  attr_accessor :length, :tail

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
    if head.nil?
      return nil
    end
    return head.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def length
    length = 0
    current = head
    if head.nil?
      return 0
    end
    until current.nil?
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def add_last(data)
    if head.nil?
      add_first(data)
      return head.data
    end

    current = head

    while !current.next.nil?
      current = current.next
    end

    new_last = Node.new(data)
    current.next = new_last
    return new_last.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_last
    current = head
    while !current.next.nil?
      current = current.next
    end
    return current.data
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    if head.nil?
      return nil
    end
    count = 0
    current = head

    while !current.nil?
      if current.data == index
        return count
      else
        count += 1
        current = current.next
      end
    end
    return length
  end
end
