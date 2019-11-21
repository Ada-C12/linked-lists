require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(n)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    @head&.data
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def length(node=@head, len=0)
    return len unless node
    return length(node.next, len.succ)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def add_last(data, node=@head)
    return add_first(data) unless node
    return node.next = Node.new(data) unless node.next
    return add_last(data, node.next)
  end

  # Time complexity - O(n)
  # Space complexity - O(n)
  def get_last(node=@head)
    return node&.data unless node&.next
    return get_last(node.next)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
