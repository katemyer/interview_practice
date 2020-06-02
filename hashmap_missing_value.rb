def return_mising(arr)
  hash_map = {}
  arr.each do |num|
    hash_map[num] = true
  end
  (1..5).times do |i|
    if hash_map[i] == true
      hash_map[i] == false
    end
  end
  hash_map.each do |k, v|
    if v == false
      return v
    end
  end
end
p return_mising([1, 2, 3, 5])