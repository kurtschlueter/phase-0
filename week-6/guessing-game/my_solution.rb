# Build a simple guessing game

# I worked on this challenge by myself
# I spent 20 mins on this challenge.

# Pseudocode

# Input: answer input in initialize method. @solved instance variable set in initialize method

# Output: high or low or correct output as symbol in guess method with guess as input. True or false output in solved? method with no inputs. Just uses instance variable @solved.

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    if guess > @answer
      @solved = false
      return :high
    elsif guess < @answer
      @solved = false
      return :low
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    return @solved
  end
end

# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  # Methods are actions. Variables are characteristics. Easy peazy.

# When should you use instance variables? What do they do for you?

  # Instance variables are used throughout the class, across multiple methods. I like using them instead of having to pass inputs through every single method in a class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  # Flow control allows for different outcomes depending on coder input. If statements along with other conditional statements are prime examples. I used one if elsif else statement in my guess method. As straightforward as it gets.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  # Well the rspec requires you to return symbols but it is not utterly essential. It does make sense however. :correct, :high, and :low will never need to be changed. A number is either correct, high, or low. It cannot exist in any other state (for the purposes of this exercise). Symbols remain constant.