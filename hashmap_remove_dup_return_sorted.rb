# Write a method that accepts a sorted array of numbers and removes
# the duplicates, returns an array of the unique numbers, still in order.
def remove_dup(arr)
  hash_map = {}
  arr.each do |num|
    hash_map[num] = true
  end
  arr = []
  hash_map.each do |key, value|
    arr << key
  end
  return arr
end
p remove_dup([1, 2, 2, 3, 4, 5, 6, 6, 7, 8])