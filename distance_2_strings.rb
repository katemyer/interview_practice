#Time = O(n * m) because iterating through each cell


def min_distance(word1, word2)
  word1size = word1.length #row
  word2size = word2.length #column

  #keep track of distance in a 2-D array
  distance = Array.new(word1size+1) { Array.new(word2size +1, 0) }

  #counter for word1
  for i in 0..word1size
    distance[i][0] = i
  end
  
  #counter for word2
  for i in 1..word2size
    distance[0][i] = i
  end

  #start loop in word1
  for i in  0...word1size
    
    #start loop in word2
      for j in  0...word2size
          #if letter in word 1 equal to letter in word2
          if word1[i] == word2[j]
            #distance should equal 1
            distance[i + 1][j + 1] = distance[i][j]
          else 
            #increase the cell value by 1
            distance[i + 1][j + 1] = [distance[i][j], distance[i][j + 1], 
            distance[i + 1][j]].min + 1
          end
      end
  end
  distance[word1size][word2size] = true
  return distance[word1size][word2size]
end

word1 = "pale"
word2 = "pae"
puts min_distance(word1, word2)