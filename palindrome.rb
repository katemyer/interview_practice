# Time Complexity: O(n)
# Space Complexity: 0(1)

#determine if string is a palindrome
#input "string"
#return true if palindrome
#return false if not

def is_palindrome(aString)
  return false if aString == nil
  #positive side = a = 0
  #negative side = y = -1
  temp_word = aString.gsub(/(\W|\d)/, "").downcase

  i = 0
  a = -1
  word = temp_word.chars
  while i < (word.length / 2)
  # check chars are the same
  # if same, move to next set of chars
  # if different, return false 
  # when processed all chars and still haven't found a difference, return true
    if word[i] == word[a]
      a -= 1
      i += 1
    else
      return false
    end
  end
  return true
end