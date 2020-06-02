# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n) loop thru each word in array
# Space complexity: O(n) as sentence gets longer, array of words grow


def sort_by_length(my_sentence)
  array_of_words = [] #create array to hold words, initialized to empty

  if my_sentence == "" #check if sentece is empty, return initialized empty array
    return array_of_words
  end

  array_of_words = my_sentence.split #split words by space

  #array_of_words = ["dogs", "are", "bestest"]
  first_word = array_of_words[0] #saving value at index 0 to first_word. ex: "dogs" is first word
  (1..array_of_words.length-1).each do |i| #start at first word (index starts at 1, not 0), check every word
    current_word = array_of_words[i] #new var called current_word is equal to first word at value i in array_of_words
    #current_word = "are"
    #ex. if length of current word "are" less than first word "dogs"
    if current_word.length < first_word.length
      #assign "are" to current word
      array_of_words[i-1] = current_word
      #assign dogs to first word (which has not shifted to second place)
      array_of_words[i] = first_word
    end
    #otherwise if current word is greater than first word, then set first word to current word
    first_word = current_word
  end
  return array_of_words
end

puts sort_by_length("dogs are bestest")
