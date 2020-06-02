
#loop through each array to see which is smallest, pop that value, add to new array
# Finally, check to see if either array is empty
# If so, just going to add the remaining array to the end of the result

#Time:
#Space: 

list1 = [1,2,3,4]
list2 = [2,5,1,7]

#output [1,1,2,2,]

def merge_arrays(list1, list2)
  # build a holder array that is the size of both input arrays
  result = []


  #merge together
  
  list2.each do |val|
    list1.push(val)
  end
  puts "#{list1}"
  
  list1.sort!

  result = list1
  
  return result
end

puts merge_arrays(list1, list2)
