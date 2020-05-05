# Problem
# Create a methond that takes two parameters
# first is an array of Ints
# second is a target (int)
# return an array of two indices where it would of equaled the target

#Repeat question: 
  # Return empty array if no indices equal target
  # array values and target are positive
  # array length can be any size
  # if array.length is 1 and matches value but need 2 indices => return empty array
  # multiple combinations, which one do you want? first or any.

#Examples:
  # input: a=[2,5,4,1], target value = 6
  # output: a_index = [0, 1]
  #first_index = a[1]
  #second_index = index[i+1]
  #second_index +=1

  #input: b=[] or c=[1]
  #output: []

  #input: a=[0,5,4,1], target value = 6

#Approach (pseudocode):
  # check if input_array.length <= 1
  # return []

#Code:
  def sum_num(int_array, target_value)
    # check if input_array.length <= 1
    if int_array.length <=1
      return []
    end
    
    i = 0
    # Loop thru inpt array starting at i=0 (stop at end of length)
    while i < int_array.length
      # create a second loop input starting at  j=i+1 (stop when input_array.length)
      j = i+1
      while j < int_array.length
        # get values of i and j, add them, check if equals target value
        # puts int_array[i].to_s + ' ' + int_array[j].to_s
        # puts i
        # puts j
        sum = int_array[i] + int_array[j]
        if sum == target_value
          return [i,j]
        end
        # if true, return [i,j]
        j +=1
      end
      i +=1
    end
    return []
  end

  #Test:
  puts sum_num([0,5,4,1], 6)
  puts sum_num([0], 6)
  puts sum_num([20,4,8,20,3,2], 6)
  # process to solve
  # 0+5
  # 0+4
  # 0+1
  # 5+4
  # 5+1 Winner
  # Loop thru inpt array starting at i=0 (stop at end of length)
  # create a second loop input starting at  j=i+1 (stop when input_array.length)
  
  # if true, return [i,j]
  # if false, check next values by incrementing j and incrementing i when j >input_array.length-1

#Optimize (Big O and improvements):
  #