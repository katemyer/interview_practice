# Given an array nums of integers, return how many of them contain an even number of digits.

#return even digits, number value doesn't count

#Time: O(n)
#Space: O(1)-input grows, amount of space needed is same, no new arrays

#Optimization: faster than O(n) is (1)/(logN), possible to check length without converting to string or several case statements

input = [1,13,14,2,1234,567]
# input = [1]
# input = []
#output = 3 [13,14,1234]

def even_digits(input)
  count = 0

  #convert numbers in array into string
  input.each do |num|
    num_string = num.to_s.chars
    puts "num string #{num_string}"
    puts "length #{num_string.length}"

  #check if num_string length % 2 -> tell us that it's even
    if (num_string.length) % 2 == 0
      #increment count
      count += 1
      puts "count #{count}"
    #else -> odd
    end
  end 
  return count
end

puts even_digits(input)