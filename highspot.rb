# Question: Given two strings a and b and your task will be to return the characters that are not common in the two strings

a = "dogsaaaa"
# b = "dogtaaab"
b = "aaabdogcats"

#Time = O(n + m) looping through a_chars array and checking against values of b_chars array and vice versa
#space = O(n) as length of strings grow, possibly, the char array holder can grow. 

def not_match(a,b)
  not_common = []
  a_chars = a.split("")
  b_chars = b.split("")

  puts "a #{a_chars}"
  puts "b #{b_chars}"

  #loop through a chars

  a_chars.each do |char|
    puts "a char #{char}"
    #check if char from a_char included in b_char
    if !b_chars.include?(char)
      not_common.push(char)
    end
  end

  b_chars.each do |char|
    puts "b char #{char}"
    #check if char from b_char included in a_char
    if !a_chars.include?(char)
      not_common.push(char)
    end
  end

  not_common = not_common.join
  return not_common
end

p not_match(a,b)

