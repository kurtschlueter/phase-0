# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

#2 methods
# Method 1 for adding numbers
#   Input of an array
# => set total to 0
#   find length of array
# => set number = 1
# While loop less than (or equal?) length of array enter loop
# => find array(number)
#     add array(number) to total
#   end while loop
# => return total sum of numbers
#
=begin
Method 2 the same
=end
# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution



def total(arraynumber)
  totalsum = 0
  length_of_arraynumber = arraynumber.length
  current_index_of_array = 0
  while current_index_of_array < length_of_arraynumber
    totalsum = arraynumber[current_index_of_array] + totalsum
    current_index_of_array = current_index_of_array + 1
  end
  #puts totalsum
  return totalsum
end


#total([1, 2, 3, 4, 5, 5, 7])


# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

def sentence_maker(arraystring)
  fullsentence = ''
  length_of_arraystring = arraystring.length
  current_index_of_array = 0
  while current_index_of_array < length_of_arraystring
    if current_index_of_array == 0
      word = arraystring[current_index_of_array].to_s.capitalize
      fullsentence = fullsentence + word + ' '

    elsif current_index_of_array == length_of_arraystring - 1
      word = arraystring[current_index_of_array].to_s
      fullsentence = fullsentence + word + '.'
    else
      word = arraystring[current_index_of_array].to_s
      fullsentence = fullsentence + word + ' '
    end
    current_index_of_array = current_index_of_array + 1

  end
# puts fullsentence
  return fullsentence
end

# sentence_maker(["alaska", "has", "over", 586, "thousand", "miles"])
# 6. sentence_maker refactored solution