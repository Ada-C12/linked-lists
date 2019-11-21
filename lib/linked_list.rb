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

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
