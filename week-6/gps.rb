# Your Names
# 1) Meagan Munch
# 2) Kurt Schlueter

# We spent [1] hours on this challenge.


# 1. Understand the code
# 2. Readability
# 3. Logic

# Bakery Serving Size portion calculator.
# Create serving size method
def ingredients_calc(item_to_make, available_ingredients)

  # Initializing variables
  # The key value pairs in the library are items you can make in this bakery
  # These are the foods that the bakery can make, and how many ingredirents are needed to make each item.

  # library is the _________

  ingredients_count = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Raises error if item_to_make does not exist in library
  unless ingredients_count.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  # This calculates the remaining ingredients
  ingredients_needed = ingredients_count[item_to_make]
  remaining_ingredients = available_ingredients % ingredients_needed

  # Returns values for left over ingredients if there are any
  # if remaining_ingredients == 0
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s)"
  # else
  #   # If there ARE leftovers, say how many (BONUS: and a suggested item)
  #   return "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s), you have #{remaining_ingredients} leftover ingredient(s). Bake #{remaining_ingredients} cookie(s) to use up remaining ingredients."
  # end

  return_string = "Calculations complete: Make #{available_ingredients / ingredients_needed} #{item_to_make}(s)."

  if remaining_ingredients > 0
      return_string += " You have #{remaining_ingredients} leftover ingredient(s). Bake #{remaining_ingredients} cookie(s) to use up remaining ingredients."
  end

  return return_string

end

p ingredients_calc("pie", 7)
p ingredients_calc("pie", 8)
p ingredients_calc("cake", 5)
p ingredients_calc("cake", 7)
p ingredients_calc("cookie", 1)
p ingredients_calc("cookie", 10)
# p ingredients_calc("apples", 5)

#  Reflection