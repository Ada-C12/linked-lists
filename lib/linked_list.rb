require_relative 'node'

class LinkedList
  attr_reader :head

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
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - ? O(n) where N is the number of elements in the linked list
  # Space complexity - O(1)
  def length
    counter = 0
    current = @head
    if current.nil? 
      return 0
    end

    while current != nil
      current = current.next
      counter += 1
    end

    return counter
  end

  # Time complexity - O(n) where n is the number of elements in the list
  # Space complexity - O(1)
  def add_last(data)
    new_node = Node.new(data, nil)
    if @head.nil?
      @head = new_node
    else
      current = head

      until current.next.nil?
        current = current.next
      end
      current.next = new_node
    end
  end

  # Time complexity - O(n) where N is number of elements in the list
  # Space complexity - O(1)
  def get_last
    current = head

    while current.next != nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - O(n) where N is the index
  # Space complexity - ? O(1)
  def get_at_index(index)
    if head.nil?
      return nil
    end
    current = head

    index.times do 
      current = current.next
    end
    return current.data
  end
end
