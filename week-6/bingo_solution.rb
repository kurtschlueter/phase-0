
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

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
board.each_index { |i| j = board[i].index '7'; p [i, j] if j}
    for x in 0..4
      for y in 0..4
        if board[x][y] = 'X'
          board.each_index { |i| j = board[i].index '7'; p [i, j] if j}
      end
    end

  end

  def indicesReturnForMatchingVar(array, var)

    heightOfArray = array.length
    widthOfArray = array[0].length
    indicesHash = Hash.new{|h, k| h[k] = []}

@hash[42][3] = 42
@hash # => {42 => [nil, nil, nil, 42]}

    for x in 0..(heightOfArray - 1)
     for y in 0..(widthOfArray - 1)

      if array[x][y] == var
        indicesHash[][]
      end

     end
    end

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

#Reflection