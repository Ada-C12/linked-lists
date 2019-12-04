require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_first(data)
    @head = Node.new(data, head)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return nil if @head.nil?
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
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

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    # until nextNode = nil
    # end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    index.times do 
      self.next
    end
    return self.value
  end
end
