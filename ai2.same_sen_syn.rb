#  Given two sentences and a hash of synonyms, determine whether the sentences are similar.
# Inputs
sentence1 = "cats are great"
sentence2 = "canines are wonderful"

hash = {
"dogs" => "canines",
"canines" => "dogs",
"great" => "wonderful",
"wonderful" => "great" }

# Output: true

# sentence1 = "cats are great"
# sentence2 = "canines are wonderful"

# hash = {
# "dogs" => "canines",
# "cats" => "felines",
# "felines" => "cats",
# "canines" => "dogs",
# "great" => "wonderful",
# "wonderful" => "great" }

# Output: false
def is_same(sentence1, sentence2, hash)
# Architecture
# chars each sentence ["dogs", "are", "great"]
first_sentence = sentence1.to_s.split() #split by space
# puts "first #{first_sentence}"
#                     ["canines", "are", "wonderful"]
second_sentence = sentence2.to_s.split()
# puts "second #{second_sentence}"
#check if sentences are same length
if first_sentence.length != second_sentence.length
  #if no, return false
  return false
end

# start i = 0 loop for sentence1 and sentence2
i = 0
  while i < first_sentence.length

    first_word = first_sentence[i]
    second_word = second_sentence[i] #dogs
    # puts "first word :#{first_word}"
    # puts "second word :#{second_word}"
   # check if words are different
    if first_word != second_word
    #check if value at i index for sentence 1 is a key in the hash
      syn = hash[first_word]
      puts syn
      # if synonym value does not equal the second word return false
      if syn != second_word
        return false
      end
    end
    i+= 1
  end
  
  return true
end

puts is_same(sentence1, sentence2, hash)

#Time: o(n)
#Space: o(1) bc while input grows and hash grows, not adding new space