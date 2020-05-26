# write a helper method reverse_characters!() that reverses all the characters between a left_index and right_index. We use it to:
# Reverse all the characters in the entire message, giving us the correct word order but with each word backward.
# Reverse the characters in each individual word.
def reverse_words!(message)
  # First we reverse all the characters in the entire message.
  reverse_characters!(message, 0, message.length - 1)
  # This gives us the right word order
  # but with each word backward.
  # Now we'll make the words forward again
  # by reversing each word's characters.
  # We hold the index of the *start* of the current word
  # as we look for the *end* of the current word.
  current_word_start_index = 0
  (0..message.length).each do |i|
    # Skip unless we're at the end of the current word.
    next unless i == message.length || message[i] == ' '
    reverse_characters!(message, current_word_start_index, i - 1)
    # If we haven't exhausted the string our
    # next word's start is one character ahead.
    current_word_start_index = i + 1
  end
end

def reverse_characters!(message, left_index, right_index)
  # Walk towards the middle, from both sides.
  while left_index < right_index
    # Swap the left char and right char.
    message[left_index], message[right_index] =
      message[right_index], message[left_index]
    left_index  += 1
    right_index -= 1
  end
end

message = 'cake pound steal'
reverse_words!(message)
puts message
# Prints: 'steal pound cake'

puts reverse_words!