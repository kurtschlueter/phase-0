# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)

  arrayWithMatchingWords = []
  for x in 0..(source.length - 1)
    sourceString = source[x].to_s
    thing_to_findString = thing_to_find.to_s
    # puts sourceString
    # puts thing_to_findString

    if sourceString.include? thing_to_findString
      # puts 'entered'
      arrayWithMatchingWords[arrayWithMatchingWords.length] = sourceString
    end
  end
  # p arrayWithMatchingWords
  return arrayWithMatchingWords
end

# my_array_finding_method(i_want_pets, 't')

def my_hash_finding_method(source, thing_to_find)

  outputArrayNamesWithAgeMatch = []
  source.each do |key, value|

    if value.to_i == thing_to_find.to_i
      outputArrayNamesWithAgeMatch[outputArrayNamesWithAgeMatch.length] = key
    end
  end
  # p outputArrayNamesWithAgeMatch
  return outputArrayNamesWithAgeMatch
end

# my_hash_finding_method(my_family_pets_ages, 3)

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2

def my_array_modification_method!(source, thing_to_modify)

  for x in 0..(source.length - 1)
    if source[x].to_s =~ /\A[-+]?[0-9]+\z/
      source[x] = source[x].to_i + thing_to_modify.to_i
    end
  end
  # p source
  return source
end

# my_array_modification_method!(i_want_pets, 2)

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# #
# #
# #


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# #
# #
# #
# #