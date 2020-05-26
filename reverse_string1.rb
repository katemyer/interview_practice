# Reverse String

# Time complexity: O(n) each iteration is independent of each other
# Space complexity: O(n) because of string needing to be split for first step in the method

#example: coffee is the best = > best is the coffee
def reverse_sentence(my_sentence)
  #1. check if my_sentence even exists
if my_sentence.nil? || my_sentence == "" || my_sentence.length == 0
  return my_sentence
end

#example input: "coffee is the best"
#output: #output: "best is the coffee"
#                             0      1      2       3
#store into temp array = ["coffee", "is", "the", "best"]
#2. SPLIT SENTENCE, SAVE INTO TEMP ARRAY
#\s+ = whitespace
#\S+ = everything else not caught by \s whitespace
temp_array = my_sentence.split(/(\s+|\S+)/)

#IMPORTANT BUSINESS LOGIC STARTS BELOW
#make another array for storage = reversed_array = []
reversed_array = []
#LOOP, start at lastword = temp array.length - 1
i = temp_array.length - 1
while i >= 0
  # push word = "best" into reversed_array
  reversed_array.push(temp_array[i])
  #decrement  
  i -= 1
end

#JOIN strings from reversed_array
# ['12','34','35','231'].join(', ')
reversed_sentence = reversed_array.join("")

#clear the input using mutations http://rubyblog.pro/2017/09/pass-by-value-or-pass-by-reference
my_sentence.clear

#use string manipulation
my_sentence.concat(reversed_sentence)

#cannot do this because ruby is pass by value and not reference
#my_sentence = reversed_sentence
end #end

test_string = "  I can do this!     "
"  I can do this!     "
puts test_string
reverse_sentence(test_string)
puts test_string

# Clarifying Questions:

#  