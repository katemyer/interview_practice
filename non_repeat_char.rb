# Write a method to find the first non-repeated character in a string. For instance, the first non-repeated character in “total” is ‘o’ and the first non-repeated character in “teeter” is ‘r’. 
# P.S: Discuss the efficiency of your algorithm.

#Repeat
  #q:what to return if there's no nonrepeated? = nil
  #q: FIRST non-repeated character, return the character
  #q: one string? 
#Examples
  #input: "ooo"
  #output: nil
  #input: "tree"
  #output "t"
#algorithm (to a 5 year old)
#take each letter out of the costco container so it's by itself
  #look at first letter t, check if there's another t
  #oh no, there's another t. let's take both t's out and put them aside
  #now let's check e, are there other e's? oh man, there's 3! let's take these out, and put them aside. 
  #   we are just left with r! that's our letter! 
  
#split the string into an array of chars
word = "tree"

#loop through chars_array, check if value at index 0 == to value at index 1

#[t,r,e,e]
#input: a word
#output : string char
def non_repeat(a_word)
  chars_array = a_word.chars
  char = ""
  i = 0
  while i < chars_array.length
    j = i + 1
    while j < chars_array.length
      if chars_array[i] == chars_array[j]
        puts chars_array[i]
        puts chars_array[j]
        break
      else #if not equal
        #check if end of j loop when it equals length of array
        if j == chars_array.length - 1
          char = chars_array[i]
          return char
        end
      end
      j += 1
    end
    i+= 1
  end
  return char
end

puts  non_repeat("tree")
#Code
#Test
#Optimize