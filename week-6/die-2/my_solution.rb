# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself
# I spent [.5] hours on this challenge.

# Initial Solution and Refactored solution

class Die
  def initialize(labels)
    if labels.length < 1
      raise ArgumentError.new("At least one label needed")
    end
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    r = rand(1..@labels.length)
    return @labels[r-1]
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  # The only difference is that roll returned labels[random #] instead of just the random number. The logic was the exact same.

# What does this exercise teach you about making code that is easily changeable or modifiable?

  # It makes things easier for edits and additions in the future. Robust code is good code.

# What new methods did you learn when working on this challenge, if any?

  # None

# What concepts about classes were you able to solidify in this challenge?

  # None. I spent all my time researching class functionality in my solo challenge this week. This lesson does show the importance of splitting up functionality with methods.