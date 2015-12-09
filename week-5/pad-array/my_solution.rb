# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size.to_i
    # puts 'entered length greater than or equal to min'
    # puts arrayNew.inspect
    return array
  elsif min_size.to_i > array.length
    # puts 'entered length less than min'
    for x in (array.length)..(min_size.to_i - 1)
      # puts 'entered for loop'
      array[x] = value

      # puts array[x]
    end
    return array
    # puts arrayNew.inspect
  end
end

def pad(array, min_size, value = nil) #non-destructive
  arrayNew = array.dup
  if arrayNew.length >= min_size.to_i
    # puts 'entered length greater than or equal to min'
    # puts arrayNew.inspect
    return arrayNew
  elsif min_size.to_i > arrayNew.length
    # puts 'entered length less than min'
    for x in (arrayNew.length)..(min_size.to_i - 1)
      # puts 'entered for loop'
      arrayNew[x] = value
      # puts array[x]
    end
    # puts arrayNew.inspect
    return arrayNew
  end
end
# pad([])
# pad([1,2,3], 0)
# pad([1,2,3], 5)
# array = [1,2,3]
# puts ' '
# p array
# puts ' '
# p pad(array, 5,2)
# p array
# puts ' '
# p pad(array,7,'apple')
# p array

# pad(['a','b','c',],3,'apple')
# pad(['a','b','c',],2,'apple')
# pad(['a','b','c',],0,'apple')

# 3. Refactored Solution



# 4. Reflection