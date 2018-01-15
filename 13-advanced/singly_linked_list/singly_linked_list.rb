class SinglyLinkedList

  include Enumerable # Mixin

  # Node = Struct.new(:value, :next) # TODO: Research how Struct works
  class Node
    attr_accessor :value, :next

    def initialize(value)
      @value = value
      @next = nil
    end
  end

  attr_accessor :head

  def initialize(value=nil)
    @head = Node.new(value) if value
  end

  def prepend(value) # AKA .unshift
    node = Node.new(value)
    node.next = @head
    @head = node
  end

  def append(value) # AKA .push
    last.next = Node.new(value)
  end

  def last
    node = @head
    while node && node.next
      node = node.next # Traverse by one to the next node in the list.
    end
    node
  end

  def insert_after(node, new_node)
  end

  def remove # AKA shift
    @head = @head.next
  end

  # def length # AKA .count, .size
  # end

  # def find(needle)
  #   # Returns the node with value of needle OR nil
  # end

  def reverse
    reverse_list = SinglyLinkedList.new
    node = @head
    while node
      reverse_list.prepend(node.value)
      node = node.next
    end
    reverse_list
  end

  def reverse!
    @head = reverse.head
  end

  def each
    node = @head
    while node
      yield node.value if block_given?
      node = node.next
    end
  end

  # Also: .map, .inject, etc

  # Bonus: at_index => []
end

bros = SinglyLinkedList.new 'groucho'
bros.append 'harpo'
bros.append 'chico'

require 'pry'
binding.pry
