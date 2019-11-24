# defines a node in a linkedList
class Node
  attr_reader :data
  attr_accessor :next

  def initialize(value, nextNode = nil)
    @data = value
    @next = nextNode
  end
end

# Node.new(1,Node.new(2,Node.new(3)))

# tail = Node.new(3)
# mid = Node.new(2, tail)
# head = Node.new(1, mid)

# new_head = Node.new(0, head)
# head = new_head

# 0 - > 1  -> 2 -> 3

# list = LinkedList.new()
# list.add(3)
# list.add(2)
# list.add(1)
