# #creatiing
hash = {}
array = []

# #initializing
hash = {"a" => 1, "b" => 2}
puts hash
array = [3,4]
puts "#{array}"

# #accessing
puts hash["a"]
puts hash["b"]
puts array[0]
puts array[1]

# #adding
hash["c"] = 1
puts hash
array.push(5)
puts "#{array}"

# #deleting

hash.delete("c")
puts hash
array.pop()
puts "#{array}"

#override
hash["c"] = 500
puts hash

array[0] = 1000
puts "#{array}"

# #loops
hash.each do |key, value|
  puts "here"
  puts key
  puts value
end

array.each do |value|
  puts "here"
  puts value
end

#sorting

#while loops

#times loop

#each loop

#matrix 2d array

#define and use methods

#if statements
