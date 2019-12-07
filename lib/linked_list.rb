require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head
  
  def initialize
    @head = nil
  end
  
  # Time complexity - O(1) because only one operation will be performed regardless of how many nodes the list has
  # Space complexity - Also O(1)
  def add_first(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
  end
  
  # Time complexity - Also O(1) because again, only one operation is being performed regardless of list length
  # Space complexity - O(1)
  def get_first
    if @head == nil
      return nil
    else
      return @head.data
    end
  end
  
  # Time complexity - O(n) because we are performing an operation for every node in the list
  # Space complexity - I think it's constant, because although we are assigning current and count variable values for each node in the list, we are overwriting existing variables instead of creating new variables each time, meaning we're just re-using the same places in memory. 
  def length
    count = 0
    current = @head
    while current != nil  
      count += 1
      current = current.next
    end
    return count
  end
  
  # Time complexity - O(n) because the only way we can get to the end of the list is by manually moving through each list node
  # Space complexity - Constant because we are re-using the same variables instead of creating new variables for each node. 
  def add_last(data)
    current = @head
    # if list is empty, add data to front
    if length == 0
      add_first(data)
    else
      # use length method to move to the last node in the list
      (length - 1).times do 
        current = current.next
      end
      last = current
      # insert the new node after the current last node; current last node's next become new last node
      new_node = Node.new(data)
      last.next = new_node
      # assign value of new node's next to nil
      new_node.next = nil
    end
  end
  
  # Time complexity - Same as add_last
  # Space complexity - Same as add_last
  def get_last
    if length == 0
      return nil?
    elsif length == 1
      return @head.data
    else
      current = @head
      (length - 1).times do
        current = current.next
      end
      return current.data
    end
  end
  
  # Time complexity - O(i) where i is the index
  # Space complexity - constant
  def get_at_index(index)
    # initialize current to head
    current = @head
    # account for index being greater than list length
    if index + 1 > length
      return nil
      # otherwise, move current to index
    else 
      index.times do  
        current = current.next
      end
    end
    # return value at indexed node
    return current.data
  end
end
