# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("At least one side needed")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 3. Refactored Solution

# Nothing to really refactor

# 4. Reflection

# What is an ArgumentError and why would you use one?

# An argument error should be used when the input does not logically correspond with the output. In this case, you can not have a zero-sided die. We could add more argument errors like if a string was the input. We cannot have a 'c'-sided die either

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

# .rand was useful

# What is a Ruby class?

# A class is an object. More specifically, they are first class objects because instances of the class are 2nd class objects. Classes can hold a bunch of methods and are instanciated.

# Why would you use a Ruby class?

# You want to use classes for structure and organization.

# What is the difference between a local variable and an instance variable?

# Local variable exist in local methods. Instance variables exists in all methods under the instaciated object.
