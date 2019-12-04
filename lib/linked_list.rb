require_relative 'node'
require "pry"

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
    # why is head initially set to nil?
  end

  # Time complexity - O(1) because inserting one node will never scale. It will always just be creating one node. 
  # Space complexity - O(1) because inserting one node will always use one location in memory
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    # Need to put the node to another node or else it'll just
    # be a floating node
    @head = new_node
  end

  # Time complexity - O(1) because searching for the head node node will never scale. 
  # Space complexity - O(1) because searching for the first node will never scale.
  # a little confused as to how the space complexity is 0(1) though. We aren't storing anything.
  def get_first
    if @head == nil
      return nil
    end 

    @head.data
  end

  # Time complexity - O(n) because you have to traverse the entire list to find the length so the time complexity
  # will scale according to the length of the list
  # Space complexity - O(1) because we will never use more than one variable (memory) to traverse the linked list.

  def length
    
    current = @head

    count = 0

    while current != nil 
      
      count += 1
      current = current.next
    end 

    return count 
  end

  # Time complexity - 0(n) because we have to traverse the whole list to add to the last node. To access the nth
  # element of any linked list, you must traverse it.
  # Space complexity - 0(1) because only one node will be created at a time
  # or is it because we will only ever use one variable?
  def add_last(data)
    current = @head 

    if current == nil
      return self.add_first(data)
    end

    while current.next != nil
      current = current.next
    end
    
    current.next = Node.new(data)
    
  end

  # Time complexity - O(n) because we have to traverse the whole list to add to the last node. To access the nth
  # element of any linked list, you must traverse it.
  # Space complexity - 0(1) because we will only ever use one variable (location in memory) to traverse the list
  # to get the last node
  def get_last
    current = @head

    while current.next != nil
      current = current.next
    end

    return current.data
  end

  # Time complexity - 0(n) because you must traverse the list to get the value at the given index.
  # Space complexity - O(1) because you will only ever use one variable (location in memory) regardless of the 
  # size of the linked list. 
  def get_at_index(index)
    current = @head
    count = 0 

    until current.nil?
      return current.data if count == index
      current = current.next
      count += 1
    end 

    return nil 

  end
end
