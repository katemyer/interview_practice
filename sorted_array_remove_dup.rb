#Method that accepts a sorted array of numbers
#Removes duplicates
#returns an array of unique numbers, still in order

#Repeat Question
  #Will there be negative numbers? - yes
  #Can it be a float? - yes
  #Is it sorted from low to high, high to low? - low to high
  #Is the return a new array or same array? - either or.

#Examples:
  #input: [1,1,1,1,1,1,1,1,1,2,3,4,4]
  #output: [1,2,3,4] 

  #input: [-1, 0, 1.2, 1.2, 3, 5, 6.6, 6.6]
  #output: [-1, 0, 1.2, 3, 5, 6.6]


#Approach
  #loop through input array
  #starting at index = 0
  #compare value of index[0] to value of index[1]
  #if same, pop out index[1]
  #if different, increment index


# Code
  #function: removing dups
  #parameters: sorted_array
  #return: sorted_array

  def remove_dups(sorted_array)
    #  go through each element in array
    i = 0
    while i < sorted_array.length do
      puts i
      puts sorted_array.length
      #checking if i equals length - 1, last value, continue
     if i == sorted_array.length - 1
      i+=1
     elsif sorted_array[i] == sorted_array[i + 1]
        sorted_array.delete_at(i) #  delete at index
      else
        i+=1 #  increment when values are not equal at index
      end
    end
    return sorted_array
  end
#Test Code
  test_array = []
  remove_dups(test_array)
  puts test_array

#Optimization
#Time: O(n) because going through each n = index element and not creating a new array
#Space: O(n) thinking of terms of memory, not creating a new array
#method .delete 
#if not sorted, then create a hash to collect data and keys need to be unique, make values key to the hash, loop through hash, and convert to array
