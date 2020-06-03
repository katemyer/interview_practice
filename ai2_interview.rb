#AI2 c13 interview
# Problem:
# go from 2x3 matrix -> 3x2 matrix

# Example:
# input = [[2,3,4],[1,5,6]]
# returns = [[2,1],[3,5],[4,6]]

#input = [[1,2,3],[4,5,6],[7,8,9],[10,11,12]]
# returns = [[1, 4, 7, 10], [2, 5, 8, 11], [3, 6, 9, 12]]

#Time: O(n2) because looping through i and j
#Space: O(n) because input array grows, the new array grows 

#Testing considerations
  #Make sure length of sub arrays inside input are equal 
  #Check for nil values if requirement is to return a "filled" out array
  #Test to see that the new_array is created correctly so that values can be pushed in accordingly


def matrix(input)
  # shortcut for making matrix
  #array = Array.new(input[0].length) {Array.new}
  new_array= []
  
  #creating structure
  #get number of columns to create number of rows
  input[0].length.times do
    new_array.push([])  
  end
  puts "new_array #{new_array}"

  i = 0 
  # i represents col for input
  # i represents row for new_array
  # [row][col]
  # input[j][i]
  # new_array[i][j]
  while i < input[0].length
    j = 0 
    # j represents row for input
    # j represents col for new_array
    # [row][col]
    # input[j][i]
    # new_array[i][j]
    while j < input.length
  
        value = input[j][i]
        #puts "value #{input[j][i]}"
        new_array[i].push(value) #i represents column, adding values into columns
      j += 1
    end
    # puts "new_array #{new_array}"
    i += 1
  end
  return new_array
end

puts "input #{input}"
puts "return #{matrix(input)}"



