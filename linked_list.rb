class Node
  attr_reader :data
  attr_accessor :next

  def initialize(value, nextNode = nil)
    @data = value
    @next = nextNode
  end
end


# Create a linked list of 5 nodes
# returns the head of the new list
def create_list
  head = nil
  [5, 4, 3, 2, 1].each do |i|
    head = Node.new(i, head)
  end

  return head
end

def print_list(head)
  current = head
  until current.nil?
    print "#{current.data} "
    current = current.next
  end
  puts
end

# new_list = create_list
# print_list(new_list)

# Add a value to the front of a list
# Time Complexity: ?
# Space Complexity: ?
def add_first(head, value_to_add)
  return Node.new(value_to_add, head)
end

# list = create_list
# list = add_first(list, 'pasta')
# list = add_first(list, 'Pizza')

# print_list(list)

# Add a value to the rear of a list
# Time Complexity: O(n)
# Space Complexity: O(1)
def add_last(head, value_to_add)
  if head.nil?
    add_first(value_to_add)
    return
  end

  current = head
  until current.next.nil?
    current = current.next
  end

  current.next = Node.new(value_to_add)
end


# Find the middle of a linked List
# Time Complexity: O(n) where n is number of nodes
# Space Complexity: O(1)
def find_middle(head)
  return nil if head.nil?
  fast = head
  slow = head

  until fast.nil?
    fast = fast.next
    slow = slow.next
    fast = fast.next unless fast.nil?
  end

  return slow.data



  # current = head
  # # Set count = 0
  # count = 0
  # until current.nil?
  #   current = current.next
  #   count += 1
  # end

  # count /= 2
  # current = head
  # count.times do
  #   current = current.next
  # end

  # return current.data

  # Count the number of elements in linked list
  # Divide count by 2
  # Loop through the list again count/2 times
  # return that element

end

# Linear Search
# Time Complexity: ?
# Space Complexity: ?
def find(head, value_to_find)

end



# Merge two sorted Linked Lists
# Time Complexity: ?
# Space Complexity: ?
def merge_sorted_lists(head_1, head_2)
  new_list = nil
  new_list_current = nil
  current_1 = head_1
  current_2 = head_2

  if current_1.data < current_2.data
    new_list = current_1
    new_list_current = new_list
    current_1 = current_1.next
  else
    new_list = current_2
    new_list_current = new_list
    current_2 = current_2.next
  end

  until current_1.nil? || current_2.nil?
    if current_1.data < current_2.data
      new_list_current.next = current_1
      current_1 = current_1.next
    else
      new_list_current.next = current_2
      current_2 = current_2.next
    end
    new_list_current = new_list_current.next
  end

  if current_1.nil?
    new_list_current = current_2
  else
    new_list_current = current_1
  end

  return new_list
end

