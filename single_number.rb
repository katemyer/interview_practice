# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

#positive and negative integers
#unsorted but can sort
#return nil if can't find single one
#don't worry about triples


# input_array = [4,1,2,1,2]
# Output: 4

input_array = [-1, -1, 0, 2, 0, -2, -2]
#output: 2

#Time: O(n+m)
#Space: O(n)
#Optimization: 
  #check count during the loop so it would be O(n)
  #use regex 
def single_one (input_array)
  the_one = nil
  sorted = input_array.sort 
  # puts sorted

  hash_map = {}

  sorted.each do |num|
      #if num [1] is not in the hash as a key, add & set value to 1
    if hash_map[num] != nil
      # hash_map.key?(num)
      hash_map[num] += 1
    else 
      hash_map[num] = 1
    end 
  end

  #loop through hash
  hash_map.each do |key,value|
    #check for values that == 1
    if value == 1
      #return the key
      the_one = key
      return the_one
    end
  end

  return the_one
end

puts single_one(input_array)
#sort input_array = [1,1,2,2,4]

#loop through input_array
# iniatlize hash_map = {}
# count = 0

