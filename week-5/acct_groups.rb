classmates = ['Alex Forger', 'Alexander Nelson', 'Karen Ball' 'Christopher Bovio', 'Gino Paul M. Capio', 'Jonathan Chin', 'Claire Samuels', 'Ray Curran', 'David Louie', 'Dave Spivey', 'Max Davis', 'Devin Mandelbaum', 'Afton Downey', 'Emmanuel Kauni', 'Jordan Fox', 'Rebecca Gahart', 'Gary Wong', 'Hodges Glenn', 'Everett Golden', 'Christopher Graf', 'alanahanson', 'LeeAnne Hawley', 'Sabri helal', 'Thomas Huang', 'Jeff Schneider', 'Jillian Dunleavy', 'Kevin Huang', 'Khamla Phimmachack', 'KT Khoo', 'Andrew s Kim', 'Joseph Kim', 'Michal Klimek', 'Nathan Knockeart', 'Brigitte Kozena', 'Donald Lang', 'Tiffany Larson', 'Liam Mackey', 'Johanna Lonn', 'Charlotte Manetta', 'Tyler McKenzie', 'Katie Meyer', 'Meagan M', 'Lucas Nagle', 'Lydia Nash', 'Jovanka', 'James O\'Neal', 'Greg Park', 'Patrick Oliphant', 'Peter Lowe', 'Lauren Reid', 'Roche', 'David Rothschild', 'Susan Savariar', 'Kurt Schlueter', 'Sharon Claitor', 'Marshall Sosland', 'Catie Stallings', 'Steven King', 'Eric Tenza', 'Timur Catakli', 'Todd Seller', 'Dan Turcza', 'Lindsey Ullman', 'Raj Vashist', 'Violet Dang', 'Chris Wong', 'Angelika Yoder', 'Michelle Zulli']

# I did not have enugh time to make this assignment as detailed as I would have liked. There are many details to take into consideration. For example, if you want groups of 5, declare a 3 minimum, and have 23 people total... do you want 4 groups of 5 (4x5=20) and 1 group of 3 (1x3=3) or do you want to have 3 groups of 5 (3x5=15) and 2 groups of 4 (2x4=8). Originally I was going to have another input that equals either high or low but I am completing this on a Tuesday. Late as usual.

#I also wanted to play around with how I selected the names at random. Maybe I'll come back to thisduring the break. For now this will be bare bones.

#Here is draft 1. It took my a while to figureout how the push values to certain location in an array. I finally did it with hash. I left a bunch of trash in this draft to show my thought process. I will make edits and rework it in a new version.
def grouperDraft1(arrayOfNames, minPerGroup, desiredPerGroup)
  numOfPeople = arrayOfNames.length
  indexNumsOfUnselectedNames = [*0..(numOfPeople - 1)]
  arrayShuffle = arrayOfNames.shuffle
  # Lets do some math to figure out how many groups we will want
  minNumOfGroups = numOfPeople/desiredPerGroup
  leftOver = numOfPeople%desiredPerGroup
  if leftOver == 0
    totalGroups = minNumOfGroups
  # left over is less than min group which means we will have to cut into the full groups
  # elsif
  #   howManyToCover = minPerGroup - leftOver
  elsif leftOver > minPerGroup
    totalGroups = minNumOfGroups + 1
  else
    totalGroups = minNumOfGroups + 1
  end
  # groupArray = [[nil]*desiredPerGroup]*totalGroups
  groupHash = Hash.new {|h,k| h[k]=[]}
  currentIndex = 0
  localIndex = 0
  groupNums = 1
  for x in 0..(indexNumsOfUnselectedNames.length - 1)
    if x%desiredPerGroup != 0
# puts ' if ' + localIndex.to_s + ' group: ' + groupNums.to_s
      groupHash[groupNums] << arrayShuffle[currentIndex]
      # p groupArray[groupNums]
      currentIndex = currentIndex + 1
      localIndex = localIndex + 1
      if localIndex == desiredPerGroup
        localIndex = 0
        groupNums = groupNums + 1
      end
    else
# puts ' else ' + localIndex.to_s  + ' group: ' + groupNums.to_s
      groupHash[groupNums] << arrayShuffle[currentIndex]
      # p groupArray[groupNums]
      currentIndex = currentIndex + 1
      localIndex = localIndex + 1
    end
    # p groupHash
  end
# for xx in 0..(groupArray.length - 1)
#   puts 'group ' + (xx + 1).to_s + ': ' + groupArray[xx].to_s
# end
p groupHash
end
# grouperDraft1(classmates, 3, 5)


def grouperDraft2(arrayOfNames, minPerGroup, desiredPerGroup)

  numOfPeople = arrayOfNames.length
  indexNumsOfUnselectedNames = [*0..(numOfPeople - 1)]
  arrayShuffle = arrayOfNames.shuffle

  # Lets do some math to figure out how many groups we will want
  minNumOfGroups = numOfPeople/desiredPerGroup
  leftOver = numOfPeople%desiredPerGroup

  if leftOver == 0
    totalGroups = minNumOfGroups

  elsif leftOver > minPerGroup
    totalGroups = minNumOfGroups + 1

  # left over is less than min group which means we will have to cut into the full groups
  else
    howManyToCover = minPerGroup - leftOver

  end

  groupHash = Hash.new {|h,k| h[k]=[]}
  currentIndex = 0
  localIndex = 0
  groupNums = 1

  #This for loop fills out the groups
  for x in 0..(indexNumsOfUnselectedNames.length - 1)

    groupHash[groupNums] << arrayShuffle[currentIndex]
    currentIndex = currentIndex + 1
    localIndex = localIndex + 1

    if (minNumOfGroups - howManyToCover) <= groupNums  && leftOver < minPerGroup && localIndex == (desiredPerGroup - 1)
      # puts ' if ' + localIndex.to_s + ' group: ' + groupNums.to_s
      localIndex = 0
      groupNums = groupNums + 1
    else
      # puts ' else ' + localIndex.to_s + ' group: ' + groupNums.to_s
      if localIndex == desiredPerGroup
        localIndex = 0
        groupNums = groupNums + 1
      end
    end
  end
# p groupHash
end

grouperDraft2(classmates, 3, 5)

# What was the most interesting and most difficult part of this challenge?

# I am glad to see driver code finally be mentioned. I am always printing values to see what my code is doing and how my values are changing at every iteration. This is very useful for me. I struggled with changing a certain value(x,y) in a mutlidimentional array. I eneded up using a hash.


# Do you feel you are improving in your ability to write pseudocode and break the problem down?

# It's getting better. I'm transitioning to using code as psuedocode. I think that shows improvement.

#Was your approach for automating this task a good solution? What could have made it even better?

# I wish I had more time

#What data structure did you decide to store the accountability groups in and why?

# I struggled with indexing with a 2d array. I could just change one element. I used a hash and that problem went away. I could not find a decent explanation for why arrays behave that way. It does not make sense.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

# Yes. I learn about .shuffle.

