# https://leetcode.com/problems/remove-vowels-from-a-string/

# Given a string S, remove the vowels 'a', 'e', 'i', 'o', and 'u' from it, and return the new string.

# string = "leetcodeisacommunityforcoders"
# Output: "ltcdscmmntyfrcdrs"

#return empty string if it is "aeiou"
#can create new_string var, space no issue
#no space, punctuation

#VOWELS = ["a", "e", "i", "o", "u"]
#convert input into an array of chars
#loop through this input_array
#check if char == vowel, 
#if true, then delete char
#convert array into string 
#return string
#case insensitive
#case sensitive = don't downcase array

VOWELS = ["a", "e", "i", "o", "u"]

def no_vowels(string)
  new_string = ""
  s_array = string.chars

  i = 0
  while i < s_array.length
    char = s_array[i]
    
    if VOWELS.include?(char) #comparing chars in array to vowels
      s_array.delete_at(i) #need index
    else
      i += 1
    end
    
  end
  #convert s_array into a string
  new_string = s_array.join('')
  return new_string
end

# string = "leetcodeisacommunityforcoders"
string = "aeiou"
puts no_vowels(string)
# Time: O(n + m)
#Space: O(n)


#OPTIMIZE
#Time using regex = O(1)
# array_st = string.chars

# array_st.delete('a')
# array_st.delete('e')
# array_st.delete('i')
# array_st.delete('o')
# array_st.delete('u')
# puts array_st.join('')

#Regex
#string.replace()