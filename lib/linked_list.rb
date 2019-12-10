require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def add_first(data)
    @head = Node.new(data, @head)
  end

  # Time complexity - 0(1)
  # Space complexity - 0(1)
  def get_first
   
      if head
        return head.data
      else 
        return nil
      end 
  end

  # Time complexity - 0(n)
  # Space complexity - 0(1)
  def length

    current = head
    length = 0
    while current != nil
      length += 1
      current = current.next
    end
    return length
  end

  # Time complexity - 0(n)
  # Space complexity - ?
  def add_last(data)

    current = head
    if current == nil
      self.add_first(data)
      return
    end
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(data)
  end	  

  # Time complexity - ?
  # Space complexity - ?
  def get_last
    current = head
    while current.next != nil
      current = current.next
    end
    return current.data
  end	  
  


  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)
    current = head
    count = 0

    return nil if current.nil?
    while count != index
      count += 1
      current = current.next
    end
    return current.data
  end
end