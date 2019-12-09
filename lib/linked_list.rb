require_relative 'node'
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  # Time complexity - O(1) where 1 is the one node created
  # Space complexity - O(1) where 1 is the one node created in space
  def add_first(data)
    @head = Node.new(data, head)
  end

  # Time complexity - ?
  # Space complexity - ?
  def get_first
    return nil if head.nil?
    return @head.data
  end

  # Time complexity - ?
  # Space complexity - ?
  def length
    return 0
  end

  # Time complexity - ?
  # Space complexity - ?
  def add_last(data)

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_last

  end

  # Time complexity - ?
  # Space complexity - ?
  def get_at_index(index)

  end
end
