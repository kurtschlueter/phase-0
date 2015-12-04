# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------FIXED-------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.

# --- error ------------FIXED--------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
  # errors.rb
# 2. What is the line number where the error occurs?
  # line 170
# 3. What is the type of error message?
  # Syntax error
# 4. What additional information does the interpreter provide about this type of error?
  # unexpected =. It expected end of input.
# 5. Where is the error in the code?
  # At the end
# 6. Why did the interpreter give you this error?
  # It seems as though a while statement needs an end clause.

# --- error --------------FIXED------------------------------------

south_park = 3;

# 1. What is the line number where the error occurs?
  # 36
# 2. What is the type of error message?
  # Name error
# 3. What additional information does the interpreter provide about this type of error?
  # undefined local variable or method `south_park'
# 4. Where is the error in the code?
  # 'south_park'
# 5. Why did the interpreter give you this error?
  # Because a new variable was called without giving it an assignment

# --- error ---------------FIXED-----------------------------------

def cartman(input)
end

# 1. What is the line number where the error occurs?
  # 52
# 2. What is the type of error message?
  # No method error
# 3. What additional information does the interpreter provide about this type of error?
  # undefined method `cartman'
# 4. Where is the error in the code?
  # cartman()
# 5. Why did the interpreter give you this error?
  # Because a method was called that was not defined

# --- error ----------------FIXED----------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase

# 1. What is the line number where the error occurs?
  # 68
# 2. What is the type of error message?
  # Argument error
# 3. What additional information does the interpreter provide about this type of error?
  # wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
  # after cartmans_phrase
# 5. Why did the interpreter give you this error?
  # The method is being called with an input of string but was not created to allow inputs

# --- error -------------FIXED-------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('Hi')

# 1. What is the line number where the error occurs?
  # 87
# 2. What is the type of error message?
  # Argument Error
# 3. What additional information does the interpreter provide about this type of error?
  # wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
  # after cartman_says
# 5. Why did the interpreter give you this error?
  # the method is being called without an input when the created method needs 1 input



# --- error ---------------------FIXED-----------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'cat')

# 1. What is the line number where the error occurs?
  # 108
# 2. What is the type of error message?
  # Argument error
# 3. What additional information does the interpreter provide about this type of error?
  # wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
  # inside method ... name
# 5. Why did the interpreter give you this error?
  # The method being called gives 1 input when the method was created to receive 2

# --- error -----------------FIXED---------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
  # 127
# 2. What is the type of error message?
  # Type error
# 3. What additional information does the interpreter provide about this type of error?
  # String can't be coerced into Fixnum
# 4. Where is the error in the code?
  # *
# 5. Why did the interpreter give you this error?
  # This line of code needs to be reversed. You cannot multiply by a string

# --- error ---------------FIXED-----------------------------------

amount_of_kfc_left = 20


# 1. What is the line number where the error occurs?
  # 142
# 2. What is the type of error message?
  # Zero division error
# 3. What additional information does the interpreter provide about this type of error?
  # divided by 0
# 4. Where is the error in the code?
  # the zero
# 5. Why did the interpreter give you this error?
  # you cannot divide by zero

# --- error --------------FIXED------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
  # 158
# 2. What is the type of error message?
  # Load error
# 3. What additional information does the interpreter provide about this type of error?
  # cannot load such file -- /Users/kurtschlueter/Git/phase-0/cartmans_essay.md
# 4. Where is the error in the code?
  # require_relative
# 5. Why did the interpreter give you this error?
  # that file does not exist


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The second one because it referenced the bottom of the code. Since the code won't intuitively know where you want to end your loop or method, the error could be anywhere. But in reality, they were all straight forward.

# How did you figure out what the issue with the error was?

# By looking at it. I'm trying to be a smartass but these errors were simple. The biggest aid the terminal can give this the line number. I think the rest is up to you.

# Were you able to determine why each error message happened based on the code?

# Yes.

# When you encounter errors in your future code, what process will you follow to help you debug?

# The line number is key. I will follow whatever process is neccessary to debug.