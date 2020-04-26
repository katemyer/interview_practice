# Write a method to find the first non-repeated character in a string. For instance, the first non-repeated character in “total” is ‘o’ and the first non-repeated character in “teeter” is ‘r’. 
# P.S: Discuss the efficiency of your algorithm.

#input: "tree"
#output: "t"
# trosdfjt
# edge cases: number, characters - still ok
#return empty string: nil or ""
#"fffffff" -> return ""

# astring = "eeg"
# # slice the string
# astring.slice
#store the characters into an array = ["t", "r", "e", "e"]
#loop through this array
#find the unique characters
#save that into a different unique_array
#return the first character in this unique_array

#hash_chars ={
#   "e" => 2,
#   "g" => 1,
# }
#check value == 1, return the key

#method
def find_non_repeat_char(string)
  char_array = string.chars()
  #initiate a hash
  char_hash = {}
  char_array.each do |char|
  #put this into a hash HALP
  
    if char_hash[char]
        char_hash[char] += 1
    else
        char_hash[char] = 1
    end
  end
  #loop through hash
  if char_hash["d"] == 1
    return char_hash["d"]
  end

  #if first value in hash is equal to 1, return the char
 


  return char_hash
end

puts find_non_repeat_char("ftssss")
