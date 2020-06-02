# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

#no sort

nums_array = [0,1,0,3,12]
# [0,1,0,3,12]
# [1,0,3,12,0]
# [1,0,3,12,0]
# [1,3,12,0,0]

# Output: [1,3,12,0,0]


# Input: [0,1,0,12,3]
# Output: [1,12,3,0,0]

#count 0
def move_zero(nums_array)

  count = 0
  nums_array.each do |num|
    if num == 0
      count = count + 1
    end
  end
  
  #delete
  nums_array.delete(0)
  #puts nums_array #{nums_array}"
  #push back

  #when know HOW MANY TIMES, use the .time loop
  # count.times do |i|
  #   nums_array.push(0)
  # end
  #or use this loop, count =2
  #push back in all 0
  i = 0
  while i < count
    nums_array.push(0)
    i += 1
  end
  
  # puts "nums_array again #{nums_array}"
return nums_array
end

puts "first version"
puts "#{move_zero(nums_array)}"



def move_zero_copy(nums_array)
  temp = []
  #loop thru nums_array
  count = 0
  nums_array.each do |num|
   #check if 0
   if num == 0
    #true, inc count
    count += 1
   else
    #add to temp
    temp.push(num)
   end
  end

  # based on the count, add zeros to the end of temp
  i = 0
  while i < count
    temp.push(0)
    i += 1
  end
 
  return temp
end
puts "second version"
puts "#{move_zero_copy(nums_array)}"