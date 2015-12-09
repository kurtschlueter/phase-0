# Pad an Array

# I worked on this challenge [with: Eddie Glenn]

# I spent [1] hour on this challenge.

# 0. Pseudocode

# Input is an array, a minimum size, and a padding value
# Output will be an array
# if length of array equals or is bigger than minimum size then we can just send the original array to the output.
# if the length of array is less than minimum size then we have pad the difference with value


# 1. Initial Solution

def pad(array, min_size, value = nil) #non-destructive
  arrayCopy = array.dup

  if arrayCopy.length >= min_size
    return arrayCopy

  else
    while arrayCopy.length < min_size
      arrayCopy[arrayCopy.length] = value
      # p arrayCopy
    end
    return arrayCopy
  end
end


def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size.to_i
    return array

  elsif min_size.to_i > array.length
    for x in (array.length)..(min_size.to_i - 1)
      array[x] = value
    end
    return array
  end
end

# 3. Refactored Solution

# It looks fine the way it is.

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

  # Yes. It is a simple if else statement with a loop in one.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

  # Yes. We have seen all of this syntax before. We breezed through it.


# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

  # No. We were sloppy. We forgot to insert pad values to the padded array and we also put the return in the while loop so it quit after one 1 iteration. These were quick fixes though.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

  # No refactoring done.

# How readable is your solution? Did you and your pair choose descriptive variable names?

  # It is pretty readable because it's simple. Our naming choices are fine.

# What is the difference between destructive and non-destructive methods in your own words?

  # Destructive changes the value of the input selected for return. Non-destructive returns a copy or new output.

