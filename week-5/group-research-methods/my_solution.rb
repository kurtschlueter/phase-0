# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


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


