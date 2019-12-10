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
    new_node = Node.new(data)

    if @head.nil? 
      @head = new_node
    else 
      current = @head
      until current.next.nil? 
        current = current.next 
      end
      current.next = new_node
    end
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = @head 
    until current.next.nil? 
      current = current.next
    end 
    return current.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    current = @head 
    if current.nil? 
      return nil 
    end

    index.times do 
      current = current.next
    end

    return current.data 
  end
  
end
