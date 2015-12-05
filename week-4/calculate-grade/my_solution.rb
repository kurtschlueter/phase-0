# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade(avg)
  if avg > 89
    p 'A'
  elsif avg < 90 && avg > 79
    p 'B'
  elsif avg < 80 && avg > 69
    p 'C'
  elsif avg < 70 && avg > 59
    p 'D'
  else
    p 'F'
  end
end
