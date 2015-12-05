# Factorial

# I worked on this challenge [by myself, with: ].

# Your Solution Below
def factorial(number)
  # Your code goes here

  total = 1

  if number == 0

    return 1

  else

    while number > 0

        total = number * total
        number = number - 1

    end

    return total

  end
end