# Numbers to Commas Solo Challenge

# I spent [1] hour on this challenge.

# 0. Pseudocode

  # The Input will be a positive integer (1000000)
  # The output will be a string of that integer with commas ('1,000,000')
  # This looks like 3 if statements that will work on the length of the input
    # if length <= 3 then send input out as input.to_s
    # if length > 3 then make edits to input.to_s
      # for (iterate through length of input.to_s)
        # if after n * 3rd digit
          # add comma
        # else
          # continue onto next iteration

# 1. Initial Solution

# def separate_comma(inputNumber)

#   inputString = inputNumber.to_s
#   inputStringR = inputString.reverse

#   if inputString.length <= 3

#     outputString = inputNumber.to_s

#   else
#     for x in 0..(inputString.length - 1)
#       if x  == 0
#         outputString = inputNumber.to_s[x]
#       elsif (inputString.length - x)%3 == 0
#         outputString = outputString + ','
#         outputString = outputString + inputNumber.to_s[x]
#       else
#         outputString = outputString + inputNumber.to_s[x]
#       end
#     end
#   end
#   p outputString
#   return outputString
# end

# 2. Refactored Solution

# Cleaned this up. Got rid of the uneccessary if statement and the usless reverse var.

def separate_comma(inputNumber)

  inputString = inputNumber.to_s

  for x in 0..(inputString.length - 1)
    if x  == 0
      outputString = inputNumber.to_s[x]
    elsif (inputString.length - x)%3 == 0
      outputString = outputString + ','
      outputString = outputString + inputNumber.to_s[x]
    else
      outputString = outputString + inputNumber.to_s[x]
    end
  end
  return outputString
end

# 3. Reflection

#What was your process for breaking the problem down? What different approaches did you consider?

  # I knew I was going to loop through each character in the input string (.to_s) and add characters to an output string. This is non-destructive. After every third character starting from the end, I would add a comma. Pretty straight forward. I was going to have to use loops and indexing because I did not remember any methods off the top of my head.

# Was your pseudocode effective in helping you build a successful initial solution?

  # Yes. It helps the flow of logic. Hopefully in time I will be able to pseudocode in ruby instead of english.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  # I thought we were not allowed to look up help for solo projects. I would have tried out .split, .join, .map but to be honest, I like the way mine is so I left it.

# How did you initially iterate through the data structure?

  # I like using for loops. I just like how they read logically. I should probably practice using other loops.

# Do you feel your refactored solution is more readable than your initial solution? Why?

  # Yes because I got rid of redundancies. I had had some unused parameters and uneccessary if statements in the first draft.