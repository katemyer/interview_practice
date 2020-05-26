# TIME: ARRAY O(n^2) because looping through array but need to check second value again  (2)

# Space: O(n^2) have one array to loop through, created another array to store data. 

# num_array = [2,7,11,15]
# target = 9
# output num_array[0], num_array[1]

def two_sum(nums, target)
  # i,j = 0, nums.length-1
  i = 0
  j = nums.length-1
  output = []
  while i < nums.length-1
    while j > i
      if nums[i] + nums[j] == target
          output << i << j
      end
      j-=1
    end
    i+=1
end
return output #returning index
end
puts "here"
puts two_sum([1,3,4,5,2], 3)


# OPTIMIZED OPTION
# TIME: HASH O(n) because you can get the key value dynamically. Checking the first key, then second key
# 1 loop, 1 check

#Space: O(n) because hash is growing over time

#NOTE: Substract from TARGET VALUE, make this your RIGID value
# def two_sum(nums, target)
#   num_hash = Hash.new(0)
#   nums.each_with_index do |num,idx|
#     num_hash[num] = idx

#     if num_hash.key?(target - num) && target % num != 0
#       return [num_hash[target - num], idx]
#     end
#   end

#   return []
# end

# two_sum([1,2,3,4,5], 3)