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

#TODO
#sorting


#WHEN TO USE LOOPS
  #while loops to guarantee start at index[0]
    #can break out once a condition is met
  #each loop doesn't guarantee start at index[0] but must go through each item
    #can't break because it will go through every item

  
#while loops

#times loop

#each loop

#matrix 2d array

#define and use methods
#input:
#output:
def whatever()
  thething = 



  return thething
end


#if statements
