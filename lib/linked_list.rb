require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) because only one operation will be performed regardless of how many nodes the list has
  # Space complexity - Also O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - Also O(1) because again, only one operation is being performed regardless of list length
  # Space complexity - O(1)
  def get_first
    if @head == nil
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    current = @head
    while current != nil  
      count += 1
      current = current.next
    end
    return count
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
