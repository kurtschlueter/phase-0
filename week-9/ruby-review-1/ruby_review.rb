# Super FizzBuzz

def super_fizzbuzz(array)

  outputArray = []
  for x in 0..(array.length - 1)

    # Multiples of 3 should be replaced with the string "Fizz"
    if array[x] % 3 == 0 && array[x] % 5 != 0
      outputArray[x] = 'Fizz'

    # Multiples of 5 should be replaced with the string "Buzz"
    elsif array[x] % 3 != 0 && array[x] % 5 == 0
      outputArray[x] = 'Buzz'

    # Multiples of 15 should be replaced with the string "FizzBuzz"
    elsif array[x] % 15 == 0
      outputArray[x] = 'FizzBuzz'

    else
      outputArray[x] = array[x];
    end
  end
  return outputArray
end

super_fizzbuzz([1,2,3,4,5,15])

# Bingo 2

class BingoScorer

  def initialize(bingoBoard)
    @board = bingoBoard
    createZeroOrOneArray
    checkForBingo
  end

  def createZeroOrOneArray
    heightOfArray = @board.length
    widthOfArray = @board[0].length
    @indicesArray = Array.new(widthOfArray){Array.new(heightOfArray)}
    for x in 0..(heightOfArray - 1)
      for y in 0..(widthOfArray - 1)
        if @board[x][y] == 'x'
          @indicesArray[x][y] = 1
        else
          @indicesArray[x][y] = 0
        end
      end
    end
  end

  def checkForBingo
    lt2rbSUM = 0
    rt2lbSUM = 0
    for x in 0..4
      # horizontal check
      if @indicesArray[x].inject{|sum,x| sum + x } == @board.length
          p 'horizontal bingo'
          return true
      end
      # Vertical check
      if @indicesArray.transpose[x].inject{|sum,x| sum + x } == @board.length
        p 'vertical bingo!'
        return true
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
    if lt2rbSUM == @board.length || rt2lbSUM == @board.length
      p 'Diagonal Bingo!'
      return true
    end
  end
end

hB = [[47, 44, 71, 8, 88],
   ['x', 'x', 'x', 'x', 'x'],
   [83, 85, 97, 89, 57],
   [25, 31, 96, 68, 51],
   [75, 70, 54, 80, 83]]
   # horizontal bingo

vB = [[47, 44, 71, 'x', 88],
   [22, 69, 75, 'x', 73],
   [83, 85, 97, 'x', 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 'x', 83]]
   # verical bingo

dB1 = [['x', 44, 71, 8, 88],
   [22, 'x', 75, 65, 73],
   [83, 85, 'x', 89, 57],
   [25, 31, 96, 'x', 51],
   [75, 70, 54, 80, 'x']]
   # diagonal bingo

dB2 = [[47, 44, 71, 8, 'x'],
   [22, 69, 75, 'x', 73],
   [83, 85, 'x', 89, 57],
   [25, 'x', 96, 68, 51],
   ['x', 70, 54, 80, 83]]
   # also a diagonal bingo

x = BingoScorer.new(vB)
x = BingoScorer.new(hB)
x = BingoScorer.new(dB1)
x = BingoScorer.new(dB2)

# Reflection

# What concepts did you review in this challenge?

# I did both the Super FizzBuzz challenge and the the Bingo 2 Challenge in review 1. The fizzbuzz challenge was very simple and was just a syntax refresher. The bingo challenge helped more with hash and array manipulating.

# What is still confusing to you about Ruby?

# I am not a pro. I would like to not have to look up as much syntax as I do. I also want to know more of the intricices of class/object interactions

# What are you going to study to get more prepared for Phase 1?

# Nothing. It's the day before and I have no time.