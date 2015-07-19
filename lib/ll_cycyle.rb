# https://www.interviewcake.com/question/linked-list-cycles
# A singly-linked list is built with Nodes, where each node has:

# node.next—the next node in the list.
# node.data—the data held in the node. For example, if our linked list stores people in line at the movies,
# node.data might be the person's name.
# A cycle occurs when a node’s next points back to a previous node in the list. The linked list is no longer
# linear with a beginning and end—instead, it cycles through a loop of nodes.

# Write a function contains_cycle() that takes the first node in a singly-linked list and returns a boolean
# indicating whether the list contains a cycle.

# For this problem, you cannot make any changes to the Node class.

class Node
  attr_accessor :next, :data
  def initialize(data, nxt=nil)
    @data = data
    @next = nxt
  end
end

def contains_cycle(node, visited=[])
  if visited.include? node
    return true
  elsif node.next.nil?
    return false
  else
    visited << node
    contains_cycle(node.next, visited)
  end
end

c = Node.new('a')
b = Node.new('b', c)
a = Node.new('c', b)
g = Node.new('c', b)

puts contains_cycle(c) == false
puts contains_cycle(b) == false
puts contains_cycle(a) == false
puts contains_cycle(g) == false

z = Node.new('z')
y = Node.new('y', z)
z.next = y

puts contains_cycle(z) == true
puts contains_cycle(y) == true


