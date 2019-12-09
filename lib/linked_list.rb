require_relative 'node'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1)
  # Space complexity - O(1), thanks to the power of linked lists we are not making any new data structures, just one new node.
  def add_first(data)
    node = Node.new(data, @head)
    @head = node
    return @head.data
  end

  # Time complexity - O(1)
  # Space complexity - O(1)
  def get_first
    return @head.data if @head
  end

  # Time complexity - O(n), where n is the length of the list
  # Space complexity - O(1)
  def length
    count = 0
    if @head
      next_node = @head.next
      count += 1
      while next_node != nil
        count += 1
        next_node = next_node.next
      end
    end
    return count
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def add_last(data)
    if @head
      if @head.next
        next_node = @head.next
        until next_node.next == nil
          next_node = next_node.next
        end
        next_node.next = Node.new(data)
      else
        @head.next = Node.new(data)
      end
    else
      @head = Node.new(data)
    end
  end

  # Time complexity - O(n)
  # Space complexity - O(1)
  def get_last
    if @head.next
      last_node = @head.next
      while last_node.next != nil
        last_node = last_node.next
      end
      return last_node.data
    elsif @head
      return @head.data
    else
      return nil
    end
  end

  # Time complexity - O(n), where `n` = index
  # Space complexity - O(1)
  def get_at_index(index)
    if @head.nil? 
      return nil
    else
      index = index
      node_index = 0
      next_node = @head
      until node_index == index || next_node == nil
        node_index += 1
        next_node = next_node.next
      end
      return next_node.data
    end
  end
end
