// Pseudocode

// I will be making a simpler version of my ruby bingo board solution. I will exclude the check for bingo functin and the statistical functions.. for now.

// I will have a print board function.
  // Loop through rows and columns
// I will have a play turn function.
  // Loop through rows and columns
  // Check to see for match
    // If match, put an X on the board

// I might create the play turn function as properties of each player object. We'll see as we go.

// Initital solution

// console.log('\nWelcome to Bingo!\n');

// var board = {
//   A: [' ',' ',' ',' ',' '],
//   B: [' ',' ',' ',' ',' '],
//   C: [' ',' ',' ',' ',' '],
//   D: [' ',' ',' ',' ',' '],
//   E: [' ',' ',' ',' ',' '],
// }

// function getRandomIntInclusive(min, max) {
//   return Math.floor(Math.random() * (max - min + 1)) + min;
// }

// function makeBoardInitialize(board){
//   var rowMatch = ['A','B','C','D','E'];
//   for (var x = 0; x <= 4; x++) {
//     for (var y = 0; y <= 4; y++) {
//       if (x==2 && y==2){
//         board[rowMatch[x]][y] = 'X'
//       }
//       else{
//         board[rowMatch[x]][y] = getRandomIntInclusive(1,15) + (15*y);
//       }
//     }
//   }
// }

// function printBoard(board) {
//   var colMatch = ['B','I','N','G','O'];
//   console.log(colMatch)
//   var rowMatch = ['A','B','C','D','E'];
//   for (var z = 0; z < 5; z++) {
//     console.log(board[rowMatch[z]])
//   }
//   console.log('\n')
// }

// function playTurn(col, num) {

//   var colMatch = ['B','I','N','G','O'];
//   var rowMatch = ['A','B','C','D','E'];
//   var colCheckIndex = colMatch.indexOf(col);
//   for (var v = 0; v < 5; v++) {

//     if (board[rowMatch[v]][colCheckIndex] == num) {
//       board[rowMatch[v]][colCheckIndex] = 'X';
//     }
//   }
// }

// makeBoardInitialize(board)
// printBoard(board)
// playTurn('B',5)
// printBoard(board)

// Refactored Solution

console.log('\nWelcome to Bingo!\n');

var boardEmpty = {
  A: [' ',' ',' ',' ',' '],
  B: [' ',' ',' ',' ',' '],
  C: [' ',' ',' ',' ',' '],
  D: [' ',' ',' ',' ',' '],
  E: [' ',' ',' ',' ',' '],
}

var boardEmpty2 = {
  A: [' ',' ',' ',' ',' '],
  B: [' ',' ',' ',' ',' '],
  C: [' ',' ',' ',' ',' '],
  D: [' ',' ',' ',' ',' '],
  E: [' ',' ',' ',' ',' '],
}

function getRandomIntInclusive(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

var  makeBoardInitialize = function (boardEmpty) {
  // console.log('makeBoardInitialize')
  var rowMatch = ['A','B','C','D','E'];
  for (var x = 0; x <= 4; x++) {
    for (var y = 0; y <= 4; y++) {
      if (x==2 && y==2){
        boardEmpty[rowMatch[x]][y] = 'X'
      }
      else{
        boardEmpty[rowMatch[x]][y] = getRandomIntInclusive(1,15) + (15*y);
      }
    }
  }
  return boardEmpty;
}

var printBoard = function() {
console.log(this.name + '\'s Board!\n')
  var colMatch = ['B','I','N','G','O'];
  console.log(colMatch)
  var rowMatch = ['A','B','C','D','E'];
  for (var z = 0; z < 5; z++) {
    console.log(this.board[rowMatch[z]])
  }
  console.log('\n')
}

var playTurn = function (col, num) {

  var colMatch = ['B','I','N','G','O'];
  var rowMatch = ['A','B','C','D','E'];
  var colCheckIndex = colMatch.indexOf(col);
  for (var v = 0; v < 5; v++) {

    if (this.board[rowMatch[v]][colCheckIndex] == num) {
      this.board[rowMatch[v]][colCheckIndex] = 'X';
    }
  }
}

var player1 = {name: 'player1',};
player1.board = makeBoardInitialize(boardEmpty);
player1.playTurn = playTurn;
player1.printBoard = printBoard;

var player2 = {name: 'player2',};
player2.board = makeBoardInitialize(boardEmpty2);
player2.playTurn = playTurn;
player2.printBoard = printBoard;

player1.playTurn('B',5)
player1.printBoard()
player2.playTurn('B',5)
player2.printBoard()

// Reflection

// What concepts did you solidify in working on this challenge?

// I got a lot better at using instances but I am not good enough. I tried to create two bingo boards for two player objects using one empty board to initialize with but failed. I need more paractice to see exactly how properties interact with each other how they interact with variables outside the class.

// What was the most difficult part of this challenge?

// I kind of explained it above. I wanted to create to seperate boards for two seperate player objects. I was able to do so but not in a DRY manner. Because of time, I have to quite and move on. Frusterating.

// Did you solve the problem in a new way this time?

// Yes I did. I made so that each player plays a personal board. I also left out a bunch of bells and whistles that I had in my Ruby version. If I have time later I will come back and make this better. HAving two empty board arrays is really annoying.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// Whatever.