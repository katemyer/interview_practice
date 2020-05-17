#unsorted
unsorted_array = [0, 1, 0, 4, 2, 5, 3, 2, 5]
#loop through add to hash
#get keys when done
a_hash = {}

unsorted_array.each do |value|
  a_hash[value] = "anything"
end

puts a_hash
puts a_hash.keys