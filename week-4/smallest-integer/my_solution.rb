# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!

  for x in 0..list_of_nums.length - 1
      if x == 0
        currentSmallest = list_of_nums[x]

      else
        if list_of_nums[x] < currentSmallest
          currentSmallest = list_of_nums[x].to_i
        end
      end
  end

  return currentSmallest
end

smallest_integer([2,-10,3,0,-2,-11])