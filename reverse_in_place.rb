# Write a method that takes a string and reverses the letters in place. 
#input: "hello"
#output  "olleh"

def reverse(str)
  left_index  = 0
  right_index = str.length - 1
  while left_index < right_index
    # Swap characters.
    # hello
    left = str[left_index]
    right = str[right_index]
    str[left_index] = right #oello
    str[right_index] = left #oellh

    # Move towards middle.
    left_index  += 1
    right_index -= 1
  end
end


str = "bird"
reverse(str)
puts str
puts str.class