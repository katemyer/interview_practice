#Get longest prefix 
#input : ["dogs", "doggo", "dot"]
#return strings that are in common : "do"

#Time: O(n + m2)
#Space : O(n)
#optimize: use regex 

def longest_prefix(array_of_strings)
  prefix = ""

  #error checking if array is empty, return strings in common init to empty
  if array_of_strings.length == 0
    return prefix
  end
  # puts "array of strings here #{array_of_strings}"

  #find longest string
  longest_length = 0
  longest_string = ""
  array_of_strings.each do |string|
    if string.length > longest_length
      longest_length = string.length
      longest_string = string
    end
  end

  # puts "longest string #{longest_string}" #doggo
  #turn longest string into array
  longest_string_array = longest_string.chars
  # puts longest_string_array

  #start loop
  i = 0
  while i < longest_string_array.length #[d,o,g,g,o]
    longest_letter = longest_string_array[i]
    j = 0 #start another loop to access words: ["dogs", "doggo", "dot"]
    while j < array_of_strings.length
      #turn array of strings into array of array of chars for each word
      word = array_of_strings[j].chars #[d,o,g,s]
      puts "Starting  #{word}"

      #get i th letter in word, needs to be i not j 
      word_letter = word[i] 

      #compare longest string array at index 0 to words at index 0
      puts "Comparing #{i} #{longest_letter} : #{word_letter}"
      if longest_letter !=  word_letter #d == d 
        return prefix
      end
      j += 1
    end
    #finished with j loop without breaking, save prefix BEFORE moving onto next letter comparisons
    prefix = prefix + longest_string_array[i] # d
    puts "prefix: #{prefix}"

    i += 1
  end
  return prefix
end 

puts longest_prefix(["dogs", "doggo", "dot"])


