# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jillian Dunleavy
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: a credit card number
# Output: true or false: is the number valid?
# Steps: split up the integers, every second integer starting from the last one will be doubled. Add all of the integers of the numbers that were doubled and of the ones that were not doubled. If the sum is divisible by 10, we give true; if not, we give false.


# Initial Solution

class CreditCardDraft
  def initialize(n)

    @creditCardNum = n
    credit_string = @creditCardNum.to_s
    credit_length = credit_string.length
    # p credit_length
    if credit_length > 16
      # p 'entered greater than'
      raise ArgumentError.new("Credit card number is too long")
    elsif credit_length < 16
      # p 'entered less than'
      raise ArgumentError.new("Credit card number is too short")
    end
  end

  def check_card
    num_string = @creditCardNum.to_s
    rev_string = num_string.reverse
    total_sum = 0
    p rev_string
    for x in 0..(rev_string.length-1)
      #turn double digit integer into string, separate string elements, turn those elements back into strings, and add them together with others
      if x%2 != 0
        p 'entered'
        doubled = rev_string[x].to_i * 2
        doubled_string = doubled.to_s
        for y in 0..(doubled_string.length - 1)

          total_sum = total_sum + doubled_string[y].to_i
          p doubled_string[y]

        end

      else
        p 'not entered'
        total_sum = total_sum + rev_string[x].to_i
        p rev_string[x]

      end
    end
    p total_sum
    if total_sum % 10 == 0
      p 'true'
      return true


    else
      p 'false'
      return false
    end
  end
end

# Don't forget to check on initialization for a card length
# of exactly 16 digits


# Refactored Solution

class CreditCard
  def initialize(n)
    @creditCardNum = n
    credit_string = @creditCardNum.to_s
    credit_length = credit_string.length
    if credit_length > 16
      raise ArgumentError.new("Credit card number is too long")
    elsif credit_length < 16
      raise ArgumentError.new("Credit card number is too short")
    end
  end

  def check_card
    num_string = @creditCardNum.to_s
    rev_string = num_string.reverse
    total_sum = 0
    for x in 0..(rev_string.length-1)
      if x%2 != 0
        doubled = rev_string[x].to_i * 2
        doubled_string = doubled.to_s
        for y in 0..(doubled_string.length - 1)
          total_sum = total_sum + doubled_string[y].to_i
        end
      else
        total_sum = total_sum + rev_string[x].to_i
      end
    end
    if total_sum % 10 == 0
      return true
    else
      return false
    end
  end
end

# Reflection

# What was the most difficult part of this challenge for you and your pair?

  #This was pretty straighforward. We got stuck becuase we didn't read the instructions correctly. I thought that we were doubling the first number from the end not the 2nd number. That cost us ~10 minutes or so.

# What new methods did you find to help you when you refactored?

  # None. We didn't separate this assignment into three methods like they asked. We initialized and checked, and that was it.

# What concepts or learnings were you able to solidify in this challenge?

  # As far as the material, it was pretty straighforward.