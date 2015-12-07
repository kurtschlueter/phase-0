
# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)

  concArray = array_1

  for x in 0..array_2.length - 1

    concArray[concArray.length] = array_2[x]

  end

return concArray
end