# # Cipher Challenge

# # I worked on this challenge by myself.
# # I spent [1] hour on this challenge.

# # 1. Solution

# Lets just use the input 'm^aerx%e&gsoi!' and what happens to it in every line of code in this class dr_evils_cipher class.

# This class requires a string: 'coded_message'
def dr_evils_cipher(coded_message)

  # the .downcase method makes all characters lowercase.
  # the .split method turns this string into an array of substrings
  # so input = ['m','^','a','e','r','x','%','e','&','g','s','o','i','!']
  input = coded_message.downcase.split("")

  # decoded_sentence is an empty array that will be filled in as each sibstring of input is decoded into it's actual meaning.
  decoded_sentence = []

  # cipher is a hash that has the code character as the key and the corresponding decoded character as the key. Ruby has a character order that starts with numbers (0,12,3..), then goes to capital letters (A,B,C...), and then goes to lower case (a,b,c...). Some characters are intermixed.

  # ASCII stands for American Standard Code for Information Interchange. Computers can only understand numbers, so an ASCII code is the numerical representation of a character such as 'a' or '@' or an action of some sort.

  # 'e' has an ASCII dec value of 101 and 'a' has a value of 97.
  # 'f' has an ASCII dec value of 102 and 'b' has a value of 98.
  # As you can see, all this secret code does is shift four characters in the ASCII scale... Pretty frickin easy for Dr. Evil to decipher. Since it is just a shift of 4, we could get rid of this hash completetly.
  # 'e'.codepoints.to_a equals 101.
  # We would split string, loop through each char, convert char to ASCII dec, subtract 4, then convert back to char, then join array. Presto!
  cipher = {"e" => "a",
            "f" => "b",
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

  # This is a simple do loop. The .each method goes through each index of the input array. Whatever code that is within the contraints of the do loop is executed for each index of the input array.
  input.each do |x|

    # This is a boolean that starts out as false. This condition is used outside of the do loop in an if statement. If a character is in the code that does not have a match, that character is passed as is. This boolean is changed to true if a match is found and the corresponding if statement outside of the loop cannot be accessed.
    found_match = false

    # Another do loop. Here we have the coded letter (x) and we are trying to loop through the cipher hash (y) to see if we have a match. Quite simple.
    cipher.each_key do |y|

      # If x = y, that means that the letter in the code (x) matches a letter in the decipher key (y).
      if x == y

        # This concatenates (<<) the decoded letter (cipher[y]) to the decoded sentence.
        decoded_sentence << cipher[y]

        # This changes found_match to true so that the if statement outside of the loops cannot be accessed. The if statement, if you remember from above, is for no matches.
        found_match = true

        # We need to break here because we found our match. No need to continue looping through the rest of cipher. This will only break the indside loop which is what we want.
        break

      # Here we have a bunch of coded characters that represent a space. These do not follow the -4 ASCII pattern described above so if we were to refactor, this if statement would have to be maintained.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"

        # The next three lines follow the same logic as the three lines in the if part of this case statement.
        decoded_sentence << " "
        found_match = true
        break

      # (0..9).to_a creates an array of numbers 0 to 9.
      # .include?(x) is a method that checks if x is in the attatched array.
      # This elseif is to check if a number is the coded substring and if it is, to just pass it as is. This would also need to be kept in refactored versiosn.
      elsif (0..9).to_a.include?(x)
        decoded_sentence << x
        found_match = true
        break
      end
    end

    # If no match was found, then we just pass the coded substring as is.
    if not found_match
      decoded_sentence << x
    end
  end

  # Turns the array of substrings into a single string with method .join()
  decoded_sentence = decoded_sentence.join("")
end

# Your Refactored Solution


def dr_evils_cipher2(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  input.each do |x|
    test = x.codepoints[0]
    if (test >= 101) && (test <= 122)
      decoded_sentence << (test - 4).chr
    elsif (test >= 97) && (test <= 100)
      decoded_sentence << (test + 22).chr
    elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
      decoded_sentence << " "
    else
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  p decoded_sentence
  return decoded_sentence
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection

# What concepts did you review or learn in this challenge?

# This was a nice refresher on Ruby syntax. I wish I had the time to do all of the exercises but I do not. I did create a bingo winner check in my original Bingo solution a couple of weeks back.

# I learned about ASCII to char conversion in this exercise. I have not worked with that before... at least not in this much detail.

# What is still confusing to you about Ruby?

# I am sure a lot. Nothing in this exercise brought up any issues however.

# What are you going to study to get more prepared for Phase 1?

# I would like to complete all of these exercises but time is a factor. We'll see.