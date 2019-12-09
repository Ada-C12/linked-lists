require_relative "node"

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
    if @head.nil?
      return nil
    else
      return @head.data
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    count = 0
    temp = @head
    while temp != nil
      count += 1
      temp = temp.next
    end
    return count
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)
    temp = @head
    while temp != nil && temp.next != nil
      temp = temp.next
    end
    last_node = Node.new(data)

    if (temp != nil)
      temp.next = last_node
    else
      @head = last_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    temp = @head

    while temp != nil && temp.next != nil
      temp = temp.next
    end
    return temp.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    temp = @head
    count = 0
    while count < index && temp != nil
      temp = temp.next
      count += 1
    end
    if (count == index)
      return temp.data
    else
      return nil
    end
  end
end
