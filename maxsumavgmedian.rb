# Given an unordered array of integers, calculate the max, sum, average and median.
# P.S: Discuss the efficiency of your algorithm.
#BRUTE FORCE

#Repeat
  #q1:can sort? yes
  #q2: negative numbers? yes
  #q3: one function? whatever is easiest
  #q4: limited space: no
#Examples 
  # input: [-8, 500, 2, 0, 10]
  #output: 
    #max: 500
    #sum: 504
    #average: 100.8
    #median: [-8, 0, 2, 10, 500] = 2
#Algorithm
  #brute force: fx for each calculation
  #max
    #sort find the last value

  #sum: add all values

  #average: sum/array.length

  #median: array.length/2 , round up

#Code
#max
# input_array = [-8, 500, 2, 0, 10]
#Time: o(n)
#Space: o(1)
input_array = [-10, -20, -30, -10]
sorted_array = input_array.sort
# puts sorted_array

# sorted_array[4]
#time: o(1)
#space: o(1)
max = sorted_array[sorted_array.length - 1]
puts "max #{max}"

#sum using while loop
#time: o(n)
#space: o(1)
total = 0
i = 0
while i < sorted_array.length
  total = sorted_array[i] + total
  i += 1
end
puts "total #{total}" 

#sum using each.do
sum = 0
sorted_array.each do |item|
  sum = item + sum
end
puts "sum #{sum}"

#average
#time: o(1)
#space: o(1)
avg = sum.to_f/sorted_array.length
puts "average #{avg}"

#median
#time: o(1)
#space: o(1)
#check if array length is even 
if sorted_array.length % 2 == 0 #true, even 
  first_index = sorted_array.length/2
  second_index = (sorted_array.length/2) - 1
  median = (sorted_array[first_index] + sorted_array[second_index]) / 2
else sorted_array.length % 2 != 0
  middle_index = sorted_array.length/2 #odd array lengths
  median = sorted_array[middle_index]
end

puts "median #{median}"

#Test 
  # input_array = [-10, -10, -10, -10]
#Optimize