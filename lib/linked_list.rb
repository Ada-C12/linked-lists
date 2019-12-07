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
    if head.nil?
      return nil
    else
      return head.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def length
    count = 0
    current = head
    until current.nil?
      current = current.next
      count += 1
    end

    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    current = head
    if current.nil?
      @head = Node.new(data, @head)
    else
      until current.next.nil?
        current = current.next
      end
      current.next = Node.new(data, nil)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    current = head
    if current.nil?
      return nil
    else
      until current.next.nil?
        current = current.next
      end
      return current.data
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_at_index(index)
    current = head
    if current.nil?
      return nil
    elsif index == 0
      return current.data
    else
      index.times do
        current = current.next
      end
      return current.data
    end
  end
end
