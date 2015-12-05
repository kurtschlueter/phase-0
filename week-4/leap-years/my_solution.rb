# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year?(num)
  if (num % 4 != 0) || ((num % 100 == 0) && (num % 400 != 0))
    return false
  else
    return true
  end
end