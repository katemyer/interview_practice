# Write a method that takes in an array of arrays. Each array has two numbers inside, the length and width of a rectangle. Example input: [[1,2],[4,6],[4,3]]. Return the largest area.

#repeat: 
  #assume values are all positive? there could be, check and discard array
  #what to return if input is empty? nil
#examples
  #                 0.   1.    2
  input_array = [[1,2],[4,6],[4,3]]
  #output: return max (int) = 24

#algorithm
  #each loop
  #initlize max
  #loop through input array
  #calculate area at each item (l*w)
  #compare to max 

  #time: o(n)
  #space: o(1)
  def largest_area(input_array)
    max = 0
    
    input_array.each do |item|
      area = item[0] * item[1] # 1 * 2
      if area > max
        max = area
      end
    end
    return max
  end

  puts largest_area(input_array)


  #input: input_array
  #output: [4,6]
  #time: o(n)
  #space: o(1)
  def largest_area_pair(input_array)
    max_pair = nil
    max = 0
    #loop through input_array
    #calculate area at each item 
    #compare to max
    #when you find max value, need to pair that matches this value
    #check if input_array is empty
    if input_array.length == 0
      return nil
    end
    
    input_array.each do |item|
      #check if any values in pair are negative
      if (item[0] > 0) && (item[1] > 0)
        area = item[0] * item [1] # 1*2
        if area > max
          max = area
          max_pair = item
        end
      end
    end
    return max_pair
  end #method

  puts largest_area_pair(input_array)
  
  #input: input_array
  #return the index

  def largest_area_index(input_array)
    max_index = -1
    max = 0

    input_array.each_with_index do |item, index| 
    area = item[0] * item [1] # 1*2
      if area > max #2 >0
        max = area #max = 2
        max_index = index
      end  
    end
    return max_index
  end #method index
 
  puts largest_area_index(input_array)
 

#code
#test
#optimize
  #maybe sorting to find the largest pair value 
  #use map enumerable in ruby 