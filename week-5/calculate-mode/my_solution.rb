# Calculate the mode Pairing Challenge

# I worked on this challenge with LeeAnne
# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# What is the input? An array of stings or numbers.
# What is the output? (i.e. What should the code return?)  An array of the most frequent value or values.
# What are the steps needed to solve the problem?
# Create a method that takes an array.
# Create loop that iterates over each value of the array.
# Create a new hash with the inputs of the array as keys and the values equaling how many times the array comes up with that input.
# Iterate through each hash to pick the highest frequency value.
# Output the highest frequency value or values.

# 1. Initial Solution

# def mode(array)
#   modeHash = Hash.new
#   for x in 0..(array.length - 1)
#     if modeHash.has_key?(array[x]) == true
#       modeHash[array[x]] = modeHash[array[x]] + 1
#     else
#       modeHash[array[x]] = 1
#     end
#     puts modeHash
#   end
#   maxVal = 0
#   outputArray =[]
#   modeHash.each do |key, value|
#       if value > maxVal
#         outputArray = []
#         outputArray[0] = key
#         maxVal = value
#       elsif value == maxVal
#         outputArray[outputArray.length] = key
#         maxVal = value
#       end
#   end
# end

# 3. Refactored Solution

def mode(array)
  modeHash = array.inject(Hash.new(0)) { |key,value| key[value] += 1; key }

  outputArray = []
  modeHash.each { |k, v| outputArray[outputArray.length] = k if v == modeHash.values.max }

  return outputArray
end

# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
  # We created a hash so that we could assign frequency occurences to keys.
  # We then looped through the hash finding the key/keys with the highest value.
#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
  # The pseudocode was pretty straight forward. It is not applicable to compare.
#What issues/successes did you run into when translating your pseudocode to code?
  # We kind of coded and tested piece by piece. I woudn't say we had issues.
  # Of course we had to add some crucial details towards the end becuase we were not getting the desired output.
  # For example, we initially didn't reset the output array when a new max value was found in the hash.
#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
  # .inject to create the hash from the input array
  # .each to loop through hash
  # .values.max to find max values
  # We did not get them to work right away but figured it out over time.

  #Thanks LeeAnne!!