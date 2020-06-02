# Given 2 arrays, return the values which appear in both lists. Example: L1 = [1,1,2,3,5] and L2 = [1 , 8 , 10, 5] => output = [1 , 5]. Example: L1 = [1,2,3] and L2 = [6] => output = []. Followed up asking how I could solve it in different ways explaining the time complexity.Also asked about space complexity.

#a_array = [1,1,2,3,5]
#b_array = [1,8,10,5]

#output = [1,5]

#Time = O(n)
#Space = between O(1) and O(n)

a_array = [1,2,3]
b_array = [6]
#return empty [] if no match
#values can be negative/positive

def same_values(a_array, b_array)
  
  hash_map = {}

  a_array.each do |value|
    if b_array.include?(value)
      #add value to hash
      hash_map[value] = true
      puts "here #{hash_map}"
    end
  end

  # array = []
  # hash_map.each do |key, value|
  #   array.push(key)
  # end

  keys = hash_map.keys
  return keys
end

puts same_values(a_array, b_array)