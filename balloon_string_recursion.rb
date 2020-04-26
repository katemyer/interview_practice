def find_balloon(string)
  string = string.downcase
  if string.length == 0 || string.length < "balloon".length
    return 0
  end
  balloon_count = 0
  letter_hash = Hash.new(0)
  i = 0
  while i < string.length
    letter_hash[string[i]] += 1
    i += 1
  end
  return balloon_count(0, letter_hash)
end
​
def balloon_count(count, letter_hash)
  "balloon".chars.each do |char|
    if !(letter_hash[char] >= 1)
      return count
    else
      letter_hash[char] -= 1
    end
  end
  count += 1
  if letter_hash.values.sum >= "balloon".length
    return balloon_count(count, letter_hash)
  else 
    return count
  end
end
​
puts find_balloon("balloon") # 1
puts find_balloon("balkhgkjgloon") # 1 
puts find_balloon("ballopn") # 0
puts find_balloon("yalloon") # 0 
puts find_balloon("Balloon") # 1 
puts find_balloon("balloonballoon") # 2
puts find_balloon("balloon baloon balloon") # 2
puts find_balloon("balloon balloon balloon") # 3
puts find_balloon("balloon balloon balloon siuhrvs balloon") # 4