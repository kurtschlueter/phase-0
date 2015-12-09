# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1
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
  source.each do |key, value|
    source[key] = value.to_i + thing_to_modify.to_i
  end
  # p source
  return source
end

# my_hash_modification_method!(my_family_pets_ages, 2)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  sourceDup = source.dup
  # p sourceDup.sort_by{|word| word.to_s}

  return sourceDup.sort_by{|word| word.to_s}
end

# my_array_sorting_method(i_want_pets)


def my_array_sorting_method_hard(source)
  orderedArray = []
  characterAlphabetOrder = ['0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z''a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

  # Loop through input array
  for x in 0..(source.length - 1)

    #If orderedArray is empty
    if x == 0
      orderedArray[0] = source[x].to_s

    #If orderedArray has components that need to be referenced
    else

      #Loop through what is currently in orderedArray
      for y in 0..(orderedArray.length - 1)

        shouldBreak = 'false'

        #Loop through each leter in current orderedArray entry
        for z in 0..((orderedArray[y].to_s).length - 1)

          #If letter in orderedArray is lower in alphabet than letter of source
          if characterAlphabetOrder.index(orderedArray[y].to_s[z]) >characterAlphabetOrder.index(source[x].to_s[z])

            #shift orderedArray from index y over 1
            orderedArray[y + 1,orderedArray.length] = orderedArray[y,orderedArray.length]
            orderedArray[y] = source[x]
            shouldBreak = 'true'
            break

          #If letter in orderedArray is higher in alphabet than letter of source and we are at end of orderedArray
          elsif characterAlphabetOrder.index(orderedArray[y].to_s[z]) < characterAlphabetOrder.index(source[x].to_s[z]) && (orderedArray.length - 1) == y

            #add to end of array
            orderedArray[y + 1] = source[x]
            shouldBreak = 'true'
            break

          #If word in orderedArray is same as word in source or is the beginning of word in source
          elsif z == ((orderedArray[y].to_s).length - 1) && characterAlphabetOrder.index(orderedArray[y].to_s[z]) == characterAlphabetOrder.index(source[x].to_s[z])

            #shift orderedArray from index y over 1
            orderedArray[y + 1,orderedArray.length] = orderedArray[y,orderedArray.length]
            orderedArray[y] = source[x]
            shouldBreak = 'true'
            break

          #If letter in orderedArray is higher in alphabet than letter of source, move on to next word for checking
          elsif characterAlphabetOrder.index(orderedArray[y].to_s[z]) < characterAlphabetOrder.index(source[x].to_s[z])

            break
          end
        end
        if shouldBreak == 'true'
          break
        end
      end
    end
  end
  # p orderedArray
  return orderedArray
end

# my_array_sorting_method_hard(i_want_pets)

def my_hash_sorting_method(source)
  sourceDup = source.dup
  # p sourceDup.sort_by{|key, value| value}
  return sourceDup.sort_by{|key, value| value}

end

# my_hash_sorting_method(my_family_pets_ages)

# Identify and describe the Ruby method(s) you implemented.
# .sort_by (http://ruby-doc.org/core-2.2.3/Enumerable.html#method-i-sort_by)
# .length (http://ruby-doc.org/core-2.2.0/Array.html#method-i-length)
# .dup (http://ruby-doc.org/core-2.2.3/Object.html#method-i-dup)
# .to_s (http://ruby-doc.org/core-2.2.3/Fixnum.html#method-i-to_s)


# Person 4
def my_array_deletion_method!(source, thing_to_delete)

  indexChange = 0
  for x in 0..(source.length - 1)
    sourceString = source[x - indexChange].to_s

    if sourceString.include? thing_to_delete
      source[x - indexChange,source.length] = source[x + 1 - indexChange, source.length]
      indexChange = indexChange + 1
    end
  end
  # p source
  return source
end
# my_array_deletion_method!(i_want_pets,'a')
# my_array_deletion_method!(i_want_pets,'t')


def my_hash_deletion_method!(source, thing_to_delete)

  source.delete(thing_to_delete)
  # puts source
  return source
end

# my_hash_deletion_method!(my_family_pets_ages,'George')

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)

  arrayInt = []
  arrayStr = []

  for x in 0..(source.length - 1)
    if source[x].to_s =~ /\A[-+]?[0-9]+\z/
      arrayInt[arrayInt.length] = source[x].to_i

    else
      arrayStr[arrayStr.length] = source[x]

    end
  end
  outputArray = [arrayInt, arrayStr]
  # p outputArray
  return outputArray
end

# my_array_splitting_method(i_want_pets)

def my_hash_splitting_method(source, age)

  arrayInside = []
  arrayOutside = []

  source.each do |key, value|
    if value.to_i <= age.to_i
      arrayInside[arrayInside.length] = [key, value]

    else
      arrayOutside[arrayOutside.length] = [key, value]
    end
  end
  outputArray = [arrayInside, arrayOutside]
  # p outputArray
  return outputArray
end

# my_hash_splitting_method(my_family_pets_ages, 4)

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#