# Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

# Each letter in the magazine string can only be used once in your ransom note.

#R
  #all letters, no spaces
  #return true or false
  #case sensitive? NO but downcase both sides

#E
  #rn string = "ab"
  #mag string = "cd"
  #return false

  #rn = "cce"
  #mag = "cdCfre"
  #return true
#A
  #BRUTE FORCE
  #turn rn string into array = [c,c]
  # loop thru rn
  # loop thru mag

#C
  #input: rn string, mag string
  #output: true or false

  def is_matched (rn_string, mag_string)
    matched = true
    rn_array = rn_string.downcase.chars
    mag_array = mag_string.downcase.chars
    
    i = 0
    while i < rn_array.length #[c,c,e]
      j = 0
      while j < mag_array.length #[c,d,C,f,r,e]
        puts "rn #{rn_array[i]}, mag #{mag_array[j]}, mag array #{mag_array}"
        if rn_array[i] == mag_array[j]
          mag_array.delete_at(j) #[d,C,f,r,e] 
          break
        end
        #check if j is the last
        if j == mag_array.length-1
          return false
        end
        j+=1
      end
      i+=1
    end
    return matched
  end

#Test below
#O
  #Time: O(n2)
    #convert to hash would = O(n) 
  #Space: O(n): as input grows, space in array grows, linearly

# puts is_matched("cce", "cdCfre")
#*************************************************************************************
# Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

# Each letter in the magazine string can only be used once in your ransom note.

#case sensitive
#space doesn't matter
#punctuation needed

#rn string = "aAb"
#mag string = "daba"
#return true

#rn string = "give me your dog"
#mag string = "please give me your dog now"
#return true

#rn string -> rn_array
#mag string -> mag_array
#loop through rn_array
#loop through mag_array
#compare value at first index in rn_array to mag_array

#a == d -> does note
#increment mag_array
#a == a -> yes!
#pop out a from mag_array -> [d,b,a]

puts "CASE SENSITIVE VERSION"
def is_matched(rn_string, mag_string)
  matched = true
  rn_array = rn_string.chars #[a,A,b]
  mag_array = mag_string.downcase.chars #[d,a,b,a]

  i = 0
  while i < rn_array.length
    j = 0
    while j <mag_array.length
      puts "rn #{rn_array[i]}, mag #{mag_array[j]}, mag array #{mag_array}"
      #compare value at first index in rn_array to mag_array
      if rn_array[i] == mag_array[j]
        mag_array.delete_at(j)
        break
      end
      #check if there's enough letters to make a ransom note
      if mag_array.length < rn_array.length
        return false
      end
      #check for case sensitivity!
      if rn_array[i] != mag_array
        return false
      end
      j+=1
    end

  i+=1
  end
  return matched
end

rn_string = "aAb"
mag_string = "daba"

puts is_matched(rn_string, mag_string)


#*************************************************************************************




puts "HASH VERSION"
puts is_matched("vsdfa", "aaaAaaaaVdSF")

def is_matched_hashed(rn, mag)
  rn = rn.downcase.chars
  mag = mag.downcase.chars

  # create rn hash
  rn_h = {}
  rn.each do |char|
    if rn_h.key?(char)
      #inc
      rn_h[char] +=1
    else
      rn_h[char] = 1
    end
  end

  mag_h = {}
  mag.each do |char|
    if mag_h.key?(char)
      #inc
      mag_h[char] +=1
    else
      mag_h[char] = 1
    end
  end


  #puts rn_h
  #puts mag_h

  #loop thru rn_h
  rn_h.each do |key, value|
    #check if key exists
    if mag_h.key?(key)
      #does it have enough
      if mag_h[key] < value
        return false
      end
    else # key doesn't exist in mag_h
      return false
    end
  end
  return true
end

puts "hased version"
puts is_matched_hashed('abcabcabc', 'aaaaaaaaaaddddddddeeeeeefffffbbbbbbbiiiiiiiiiihhhhcccc')

# Time:  N + N + N = 3N -> O(N)
# Space:  2N (2array) + 2N (2hashs) -> O(N)