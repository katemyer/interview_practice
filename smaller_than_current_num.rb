# Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].

#positive/negative numbers
#return an array of [0,0,0] if no numbers
#if input empty, return empty[]

input = [6,5,4,8] #[4,5,6,8]
# Output: [2,1,0,3]

def smaller_than(input)
  count_array = []
  #i = 0
  i = 0
  while i < input.length  
    value1 = input[i]
    # puts "value 1 #{input[i]}"
    
    count = 0 #if outside of j loop, count will be additive
    j = 0
    while j < input.length
      value2 = input[j]
      # puts "value 2 #{input[j]}"
      #check num[i] > num [j]
      if value1 > value2 # 6 > 6, 5>6
        #incrememnt count 
        count = count + 1
      end
      #evaluation happen in j loop, want to see what happens at end of one j loop cycle 
      puts "#{value1} : #{value2} : #{count}: #{count_array}"
      j += 1
    end #done looping thru j

    count_array.push(count)  #action to take AFTER LOOPS but before increment i
    
    i += 1
  end #done looping thru i
#return count array
  return count_array
end

puts smaller_than(input)

#Time = O(n2) two while loops
#Space = O(n) as input grows, count array grows (possibly)