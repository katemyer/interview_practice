
a = "soss"
b = "sogt"

#output = "st"
def not_match(a,b)
  char = []
  a_chars = a.split("")
  b_chars = b.split("")

  puts "a #{a_chars}"
  puts "b #{b_chars}"

  i = 0
  while i < a_chars.length

    #check
    if a_chars[i] != b_chars[i] # d-d
      char.push(a_chars[i])
      char.push(b_chars[i])
    end
    i += 1
  end

  char = char.join
  return char
end

p not_match(a,b)

#time = O(n) looping through a_chars array and checking against values of b_chars array
#space = O(n) as length of strings grow, possibly, the char array holder can grow. 