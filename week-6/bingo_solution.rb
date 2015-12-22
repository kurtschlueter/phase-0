
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


#-----------Psuedocode--------------#

# Create Initialize method with input 2d array that we will set as our @bingoBoard instance variable. We will also call the printBoard method from here so we can see the board initially.

# Create a printBoard method that will prin the current status of the 2d @bingoBoard array. No inputs. Just uses instance variable @ bingoBoard

# Create a submitGuess method that will take a guess and and call a checkGuess method to see if the board has a match. this method will have a string input that will be formatted here. The formatted version will be checked in our next method.

# Create a checkGuess method that uses instance variables created from the result of the submitGuess method. Here we will check to see for a match.

#-----------Board Array--------------#

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

#-----------Initial Solution--------------#

class BingoBoardDraft1

  def initialize(board)
    @bingoBoard = board
    puts ' '
    printBoard
  end

  # Print board
  def printBoard
    p 'Current Board'
    for x in 0..(@bingoBoard.length - 1)
      p @bingoBoard[x]
    end
    puts ' '
  end

  # Acquire guess from user (Play user turn)
  def submitGuess(totalGuess)
      @letGuess = totalGuess[0]
      @numGuess = totalGuess[1,totalGuess.length]
      messageBoardString = 'Player submitted ' + totalGuess + ' as a guess.'
      messageBoard(messageBoardString)
      checkUserGuess
  end

  def checkUserGuess
    colIDfull = 'BINGO'
    colIndex = colIDfull.index(@letGuess)
    match = 0
    for x in 0..(@bingoBoard.length - 1)
      if @bingoBoard[x][colIndex].to_s == @numGuess
        @bingoBoard[x][colIndex] = 'X'
        match = match + 1
      end
    end
    if match >= 1
      messageBoardString = 'Player has ' + match.to_s + ' match(es)!'
    else
      messageBoardString = 'Not a match!'
    end
    printBoard
    messageBoard(messageBoardString)
  end

  def messageBoard(string)
    p string
    puts ' '
  end
end

# Driver code for Draft 1
# new_game = BingoBoardDraft1.new(board)
# new_game.printBoard
# new_game.submitGuess('B22')

#-----------Initial Solution v 2--------------#

class BingoBoardDraft2

  def initialize
    makeBoard
    puts '','New Bingo Game Intitialized!',''
    printBoard
  end

  # Make Board with Bingo Specs
  def makeBoard
    bingoBoard = Array.new(5){Array.new(5)}
    for x in 0..4
      for y in 0..4
        if x == 2 && y == 2
          bingoBoard[x][y] = 'X'
        else
          bingoBoard[x][y] = rand(1..15) + (15*y)
        end
      end
    end
    @bingoBoard = bingoBoard
  end

  # Print board
  def printBoard
    p 'Current Board'
    for x in 0..(@bingoBoard.length - 1)
      p @bingoBoard[x]
    end
    puts ' '
    return
  end

  # Acquire guess from user (Play user turn)
  def submitGuess(totalGuess)
      @letGuess = totalGuess[0]
      @numGuess = totalGuess[1,totalGuess.length]
      messageBoardString = 'Player submitted ' + totalGuess + ' as a guess.'
      messageBoard(messageBoardString)
      checkUserGuess
      return
  end

  def checkUserGuess
    colIDfull = 'BINGO'
    colIndex = colIDfull.index(@letGuess)
    match = 0
    for x in 0..(@bingoBoard.length - 1)
      if @bingoBoard[x][colIndex].to_s == @numGuess
        @bingoBoard[x][colIndex] = 'X'
        match = match + 1
      end
    end
    if match >= 1
      messageBoardString = 'Player has ' + match.to_s + ' match(es)!'
    else
      messageBoardString = 'Not a match!'
    end
    printBoard
    messageBoard(messageBoardString)
    return
  end

  def messageBoard(string)
    p string
    puts ' '
    return
  end
end

# Driver code for Draft 2
# new_game = BingoBoardDraft2.new
# new_game.printBoard
# new_game.submitGuess('B22')

#-----------Refactored Solution--------------#

class BingoBoard

  def initialize
    @turns = 0
    @hits = 0
    makeBoard
    puts '','New Bingo Game Intitialized!',''
    printBoard
  end

  def makeBoard
    board = Array.new(5){Array.new(5)}
    for x in 0..4
      for y in 0..4
        board[x][y] = (x ==2 &&y == 2) ? 'X' : rand(1..15) + (15*y)
      end
    end
    @bingoBoard = board
  end

  def makeTestBoard
    boardTest = Array.new(5){Array.new(5)}
    for x in 0..4
      for y in 0..4
        if x + y == 4
          boardTest[x][y] = 'X'
        else
          boardTest[x][y] = 'Y'
        end
      end
    end
    @bingoBoard = boardTest
  end

  def printBoard
    puts 'Current Board'
    for x in 0..(@bingoBoard.length - 1)
      p @bingoBoard[x]
    end
    puts ''
  end

  def submitCall(totalCall)
      @turns = @turns + 1
      @letCall = totalCall[0]
      @numCall = totalCall[1,totalCall.length]
      messageBoardString = 'Player submitted call: ' + totalCall
      messageBoard(messageBoardString)
      checkCall
  end

  def checkCall
    colIDfull = 'BINGO'
    colIndex = colIDfull.index(@letCall)
    match = 0
    for x in 0..(@bingoBoard.length - 1)
      if @bingoBoard[x][colIndex].to_s == @numCall
        @bingoBoard[x][colIndex] = 'X'
        @hits = @hits + 1
        match += 1
      end
    end
    messageBoardString = (match >= 1) ? 'Player has ' + match.to_s + ' match(es)!' : 'Not a match :('
    messageBoard(messageBoardString)
    printBoard
  end

  def checkForBingo
    bingo = 0
    createZeroOrOneArray(@bingoBoard, 'X')
    lt2rbSUM = 0
    rt2lbSUM = 0
    for x in 0..4

      # horizontal check
      if @indicesArray[x].inject{|sum,x| sum + x } == @bingoBoard.length
        messageBoard('You got Bingo!')
        bingo == 1
        return
      end

      # Vertical check
      currentCol = @indicesMatrix.column(x)
      if currentCol.inject{|sum,x| sum + x } == @bingoBoard.length
        messageBoard('You got Bingo!')
        bingo == 1
        return
      end

      for y in 0..4
        if x == y
          lt2rbSUM = lt2rbSUM + @indicesArray[x][y]
        end
        if x + y == 4
          rt2lbSUM = rt2lbSUM + @indicesArray[x][y]
        end
      end
    end

    # Diagonal Check
    if lt2rbSUM == @bingoBoard.length || rt2lbSUM == @bingoBoard.length
      messageBoard('You got Bingo!')
      bingo == 1
      return
    end

    if bingo == 0
      messageBoard('Sorry. No Bingo achieved yet.')
    end
  end

  def createZeroOrOneArray(array, var)
    heightOfArray = array.length
    widthOfArray = array[0].length
    @indicesArray = Array.new(widthOfArray){Array.new(heightOfArray)}
    @indicesHash = Hash.new{|h, k| h[k] = []}

    for x in 0..(heightOfArray - 1)
     for y in 0..(widthOfArray - 1)
      if array[x][y] == var
        @indicesHash[x][y] = true
        @indicesArray[x][y] = 1
      else
        @indicesHash[x][y] = false
        @indicesArray[x][y] = 0
      end
     end
    end
    require 'matrix'
    @indicesMatrix = Matrix[@indicesArray]
  end

  def messageBoard(string)
    puts string , ''
  end

  def hitRate
    rate = @hits/@turns.to_f * 100
    puts "#{rate}% success rate! ",''
  end
end

# Driver code for Refactored Solution
new_game = BingoBoard.new
new_game.printBoard
new_game.submitCall('B2')
new_game.submitCall('I22')
new_game.submitCall('N42')
new_game.submitCall('G56')
new_game.submitCall('O72')
new_game.hitRate
new_game.checkForBingo

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  # My pseudocoding is sloppy bc I do not give much attention to it. I will definately use pseudocode when problems become complicated and need to be thought out. For now, I just do the bare minimum to comply with expectation.

# What are the benefits of using a class for this challenge?


# How can you access coordinates in a nested array?
# What methods did you use to access and modify the array?

  # I will just combine the answers to the previous two questions because they are related. I looped though the height and width of the array (nested for loop) to set and to get values of a certain index. To create an array, I started by creating an empty one that was nXm depending on what bingo board size we wanted (5x5 in this case)
  # board = Array.new(5){Array.new(5)}
  # I then set values to each index combo by looping through x and y.
  # board[x][y] =  rand(1..15) + (15*y)

#Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  # I learned matrix syntax for my checkBingo method. In chckBingo I check my instance variable @bingoBoard (an array) to see if the player has achieved bingo. It took me awhile to get this method to work but once I figured it out, it was pretty simple.

# How did you determine what should be an instance variable versus a local variable?

  # Instance variables are used in multiple methods. @bingoBoard for example, was used to print the board, submitt a guess, check that guess, and check for bingo. It would be a pain in the put to have to pass that array as an input into every method that uses it.

# What do you feel is most improved in your refactored solution?
  # I did not refactor much. INstead, I spent that time creating a checkForBingo method that checks the current board for vertical, horizontal, and diagonal bingo. It works. You can use the makeTestBoard method to test it out.