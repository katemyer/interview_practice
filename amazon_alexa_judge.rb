# FIND THE TOWN JUDGE

# In a town, there are n people labelled from 1 to n.  There is a rumor that one of these people is secretly the town judge.

# If the town judge exists, then:
# 1. The town judge trusts nobody.
# 2. Everybody (except for the town judge) trusts the town judge.
# 3. There is exactly 1 person that satisfies properties 1 and 2.

# You are given a 2D array called trusts, where each element therein is an array of pairs (trusts[i] = [A, B]) representing that the person labelled A trusts the person labelled B.

#   example: 
    # n = 3
    # trusts = [[1,3],[2,3],[1,2],[2,1]]
    
    n = 4
    trusts = [[1,3],[1,4],[2,3]]

#     person1 trusts person3
#     person2 trusts person3
#     return = 3 is judge

# If the town judge exists and can be identified, return the label of the town judge.  Otherwise, return -1.

#Time= CRAZY = O(n + n2) because there's a LOT of loops!!!!
#Space = O(n) as n grows, unique townspeople array grows, and as trusts grow trust_circles hash grows
def judge(n, trusts)
  puts "Trusts: #{trusts}"
  judge = -1

  #Build Unique Towns People 
  unique_townspeople = []
  n.times do |i|
    unique_townspeople.push(i+1)
  end
  puts "Unique Towns People: #{unique_townspeople}"

  #Build "Trust Circles Hash"
  trust_circles = {}
  #Loop through trusts
  i = 0
  while i < trusts.length
    #get the trustor (A)
    trustor = trusts[i][0]
    #get the trustee (B)
    trustee = trusts[i][1]
    #check if trustor exists
    if !trust_circles.key?(trustor)
      #if does not exist, add trustor in array
      trust_circles[trustor] = []
      trust_circles[trustor].push(trustee)
    else #does exist, push trustee to array
      trust_circles[trustor].push(trustee)
    end   
    i += 1
  end
  puts "Trust circles: #{trust_circles}"

  #Determine the judge
  # 1. The town judge trusts nobody.
  #compare values in unique townspeople against keys in trust circle
  trustors = trust_circles.keys
  potential_judges = []

  i = 0
  while i < unique_townspeople.length
    if !trustors.include?(unique_townspeople[i])
      # puts "trustors #{trustors} : townpeople #{unique_townspeople[i]}"
      potential_judges.push(unique_townspeople[i])
      # puts "potential_judges #{potential_judges}"
    end
    i += 1
  end
  puts "Potential Judges: #{potential_judges} (Townspeople who trust no one)"

  # 2. Everybody (except for the town judge) trusts the town judge.
  #loop through potential judges

  #add potential judges to the trust circle
  potential_judges.each do |pjudge|
    trust_circles[pjudge] = []
  end
  puts "Trust Circle: #{trust_circles} (Added Potential Judges to trust circle)"

  i = 0
  while i < potential_judges.length
    is_trusted =true
    
    #loop through trust cirlce  
    trust_circles.each do |trustor, trustees|
      #check if potential judge is not a value to key(trustor)
      #and do not evaluate yourself
      if (trustor!=potential_judges[i]) && (!trustees.include?(potential_judges[i]))
        #puts "trustees #{trustees}, potential judge #{potential_judges[i]}"
        potential_judges.delete_at(i)
        i = i-1 #offset i because shift during delete_at
        is_trusted = false
        break #breaks trust circle
      end
    end
    i += 1
  end
  puts "Potential Judges: #{potential_judges} (Remaining judges who are trusted by everyone)"

  # 3. There is exactly 1 person that satisfies properties 1 and 2.
  if potential_judges.length == 1
    judge = potential_judges[0]
  else
    return -1
  end

  return judge
end

puts judge(n, trusts)