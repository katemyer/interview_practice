# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
    
  #positive values in array
  #2- values for now
  #return nil if x is out of range of -k..k

  a = [2,5]
  #k = 3
  #pick number between -3 < x =1 <3
  #B = [3, 6]
  #output: 3

  #loop through array_a
  a.each do |num|
  #random value =x that is between -k and k
      k = 5 #random value
      x = 1
      smallest_range = 0
      
      #check if x is less than k and greater than -k
      if (x !<= k) && (x !>= -k)
          #if not, then return nil
          break
      else
          #add random value x to each element in array_a
          new_value = num + x 
          #push value from line 17 into array_b
          array_b = []
          array_b.push(new_value) #[3,6]
      end
          #largest value in array_b - smallest value in array_b
          smallest_range = array_b.max - array_b.min
      #return this smallest range value
      return smallest_range
  end
end

#Time: O(n)
#Space: O(1)