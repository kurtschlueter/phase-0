
# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def count_between(array_1, lower_bound, upper_bound)

  numInBounds = 0


  if lower_bound.to_i > upper_bound.to_i
    return 0
  end
  if lower_bound.to_i == upper_bound.to_i
    puts array_1.length
    return array_1.length
  end

  if
    for x in 0..array_1.length - 1
      if array_1[x] <= upper_bound.to_i && array_1[x] >= lower_bound.to_i
        numInBounds = numInBounds + 1
      end
    end
  # puts numInBounds
  return numInBounds
  end
end

# count_between([1,1,1], 1, 1)
# array = Array.new(10) { rand(101) - 50 }
# puts array
# count_between(array, -50, 50)
# count_between([1,2,3,4,5],0,6)
# count_between(array, 50, 50)