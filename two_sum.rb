# You are given an array of n integers and a number k. Determine whether there is a pair
# of elements in the array that sums to exactly k. For example, given the array [1, 3, 7] and
# k = 8, the answer is “yes,” but given k = 6 the answer is “no.”

#input: [1,2,3,4,5]
#target number = k = 3
#determine if two numbers add up to target number = k
#R
  #positive or negative values? any
  #return nil if there are no values
#E
  #target value: 5
  #output: [1,4]
#A
  #two trackers to check first value and second value
  #sum of these two values
#C
#T
#O

#input: array of numbers
#otuput: true or false
def two_sum(nums, target)
  target = 0
  i = 0
  while i < nums.length
    j = i + 1
    while j < nums.length
      if nums[i] + nums[j] == 0
        return [i, j] #return array of actual values
      end
      j += 1
    end
    i += 1
  end
  return target
end

numbers = [0, 2, 11, 19, 90]
p two_sum(numbers, 11)
p two_sum(numbers, 25)