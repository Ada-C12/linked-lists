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
  # Space complexity - ?
  def add_last(data)
    if @head.nil?
      @head = Node.new(data, head)
    else
      current = @head
      until current.next.nil?
        current = current.next
      end
    end
    # current.next = Node.new(data, nil)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    if head.nil?
      return nil
    end
    current = @head

    while current.next != nil
      current = current.next
    end
    return current
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    if @head.nil?
      return nil
    end
    current = @head
    index.times do 
     current =  current.next
    end
    return current.data
  end
end
