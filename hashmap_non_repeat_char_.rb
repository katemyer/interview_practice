# Write a method to find the first non-repeated character in a string.
# For instance, the first non-repeated character in "total" is 'o' and the
# first non-repeated character in "teeter" is 'r'.
# P.S: Discuss the efficiency of your algorithm.
"total"
[t, o, t, a, l]
def non_repeated(str)
  string = str.split("")
  hash_map = {}
  string.each do |char|
    hash_map[char] ? hash_map[char] += 1 : hash_map[char] = 1
  end
  array = []
  hash_map.each do |key, value|
    if value == 1
      array << key
    end
  end
  return array.first
end
p non_repeated("")