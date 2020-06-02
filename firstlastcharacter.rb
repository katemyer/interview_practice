#Remove first and last character of string, return string

#what to return if the word is "no" -> empty string ""
#assume that string is more than two chars


#input: "bird"
#output: ir

s = "tree"
#s_array = s.chars
#s_array = ["b", "i", "r", "d"]
#to remove last letter = s_array.pop()
#to remove first letter = s_array.delete_at(0)
#concat array items to return string

#Time:  O(1): if input grows, does time grow? NO, it's constant because quickly indexing to find first and last item in array. 
#Space: O(n) :if input grows, does size grow? YES, created s_array, if s is a millon, then length of s_array will be a million. 

def remove_char(s)

s_array = s.chars 
new_s = ""
#check that string is more than 2 chars
# 2 < 3
if s_array.length < 3
  return ""
end
  # puts "here1 #{s_array}"
  s_array.delete_at(0)
  # puts "here2 #{s_array}"
  s_array.pop()
  # puts "here3 #{s_array}"
# ["i", "r"] -> "ir"
  # s= "r"
  # h= "e"
  # puts s+h
  s_array.each do |char|
    new_s = new_s + char    
  end

  # new_s = s_array.join("")
  # puts "final #{new_s}"
  return  new_s
end

puts remove_char(s)