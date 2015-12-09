# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def mode(array)

  modeHash = Hash.new

  for x in 0..(array.length - 1)
    if modeHash.has_key?(array[x]) == true
      modeHash[array[x]] = modeHash[array[x]] + 1
    else
      modeHash[array[x]] = 1.to_i
    end
  end


  iteration = 0
  outputModeArray = []
  valueMax = 0
  modeHash.each do |key, value|

    if iteration == 0
      valueMax = value.to_i
      # puts valueMax.to_s + ' iteration 0'
      iteration = iteration + 1
      outputModeArray[0] = key

    elsif value.to_i > valueMax
      # puts valueMax.to_s + ' new max'
      outputModeArray = []
      outputModeArray[0] = key
      valueMax = value.to_i
      iteration = iteration + 1

    elsif value.to_i == valueMax
      # puts valueMax.to_s + ' equal max'
      outputModeArray[outputModeArray.length] = key
      valueMax = value.to_i
      iteration = iteration + 1
    end
  end
  p outputModeArray
  return outputModeArray
end

mode(['c','v','s','s','s','c','c','c','c'])
mode(['c','v','s'])

# 3. Refactored Solution




# 4. Reflection