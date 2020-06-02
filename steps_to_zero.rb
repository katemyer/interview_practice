# Given a non-negative integer num, return the number of steps to reduce it to zero. If the current number is even, you have to divide it by 2, otherwise, you have to subtract 1 from it.

#-1
# / 2

#input: 13
#step 1: -1 = 12 != 0
#step 2: 6
#step 3: 3
#step 4: 2
#step 5: 1
#step 6: 0
#output = 6  int

#Time: O(log n) because getting number, splitting in half, rechecking number loop
#Space: O(1) step var doesn't grow if input grows
#optimize: short cut type of syntax to get it faster than log n, that's O(1) so it's probably some equation 
def steps(num)
  step = 0
#condition is that num != 0
while num != 0
  #13 ---check if number % 2 (tell us if even)
  #divide number / 
  if num % 2 == 0 #even
    num = num / 2
  else #odd
    num = num - 1
    #subtract -1
  end
  #increment step
  step += 1
end
  return step
end

num = 100
puts steps(num)