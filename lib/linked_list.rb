require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    if @head != nil
      return @head.data
    else
      return nil
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    current = @head
    count = 0

    while current != nil
      count +=1
      current = current.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    new_node = Node.new(data)
    
    if @head == nil
      add_first(data)
    else  
      current = @head
      while current.next != nil
        current = current.next
      end
      current.next = new_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = @head

    until current.next == nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    element_position = 0
    current = @head
    last = length - 1

    if index > last || index < 0
      return nil
    else
      until index == element_position
        current = current.next
        element_position += 1
      end
      return current.data
    end
  end
end
