require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - ?
  # Space complexity - ?
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
    curr = @head
    count = 0
    until curr == nil
      count += 1
      curr = curr.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    curr = @head
    if @head == nil
      @head = Node.new(data)
    else
      until curr.next == nil
        curr = curr.next
      end
      curr.next = Node.new(data)
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    curr = @head

    if @head == nil
      return nil
    else
      until curr.next == nil
        curr = curr.next
      end
      return curr.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
