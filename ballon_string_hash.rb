# Given a string text, you want to use the characters of text to form as many instances of the word "balloon" as possible.

# You can use each character in text at most once. Return the maximum number of instances that can be formed.

# input: string
# output: int

def balloon_count(s)
  # make some data structure to represent counts needed of each character to spell "balloon" (balloon_counts)
  balloon_counts = {
    "b" => 1,
    "a" => 1,
    "l" => 2,
    "o" => 2,
    "n" => 1
  }
  # make another data structure that will store counts of all characters in s (s_counts)
  
  s_counts = {
    "b" => 0,
    "a" => 0,
    "l" => 0,
    "o" => 0,
    "n" => 0
  }
  # iterate through s to populate s_counts
  s.each_char do |c|
    if (s_counts[c])
      s_counts[c] += 1
    end
  end

  # create array to represent s_counts['b'] / balloon_counts['b'] and so on (letter_ratios)
  letter_ratios = []
  s_counts.each do |letter, count|
    letter_ratios << count / balloon_counts[letter]
  end
  return letter_ratios.min
end


# ex: 
# balloon -> 1
# bbaalllloooonn -> 2
# '' -> 0
# balloo -> 0
p balloon_count("balloon")
p balloon_count("bbaalllloooonn")
p balloon_count("")
p balloon_count("balloo")