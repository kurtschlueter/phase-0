 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:
// Characters:
// Objects:
// Functions:

// Pseudocode

// First I want to create a board
//
//
//
//

// TESTING VERSION 1

// My initial code is just to get things working. I will create objects and functions in my refactored solution. I just want to start out making sure each segment works. This is useful for me so that I can see the process I went through later one. It helps a lot more than pseudocode in my opinion.

// console.log('\nWelcome to Connect Four!\n');

// // ********* BOARD CREATION **********

// // Creates column with id's
// var columnIDrow = Array(50).join(' ').split('');
// var columnIDs = ['A','B','C','D','E','F','G'];
// var idIndexCount = 0;
// for (var x = 0; x < columnIDrow.length; x++) {
//   if (x%7 == 0){
//     columnIDrow[x + 3] = columnIDs[idIndexCount];
//     idIndexCount = idIndexCount + 1;
//   }
// }
// console.log(columnIDrow.join(''));

// // Creates verticle line all the way across
// var verticalSplit = Array(50).join('-');

// // Creates horizontal boundaries and slots
// var slots = Array(50).join(' ').split('');
// for (var x = 0; x < slots.length; x++) {
//   if ((x == 0) || (x == 48) || (x%7 == 0)){
//     slots[x] = '|';
//   }
// }

// // Prints the board
// console.log(verticalSplit);
// for (var x = 1; x < 8; x++) {
//   console.log(slots.join(''));
//   console.log(verticalSplit);
// }

// // ********* ARRAY FOR CURRENT GAME STATUS *********

// var boardStatusCol = {
//   A: ['X',' ',' ',' ',' ',' ',' '],
//   B: ['O',' ',' ',' ',' ',' ',' '],
//   C: ['X',' ',' ',' ',' ',' ',' '],
//   D: ['O',' ',' ',' ',' ',' ',' '],
//   E: ['X',' ',' ',' ',' ',' ',' '],
//   F: ['O',' ',' ',' ',' ',' ',' '],
//   G: ['X',' ',' ',' ',' ',' ',' '],
// }
// var boardColTotals = {
//   A: 1,
//   B: 1,
//   C: 1,
//   D: 1,
//   E: 1,
//   F: 1,
//   G: 1,
// }
// var boardStatusRow = {
//   7: [' ',' ',' ',' ',' ',' ',' '],
//   6: [' ',' ',' ',' ',' ',' ',' '],
//   5: [' ',' ',' ',' ',' ',' ',' '],
//   4: [' ',' ',' ',' ',' ',' ',' '],
//   3: [' ',' ',' ',' ',' ',' ',' '],
//   2: [' ',' ',' ',' ',' ',' ',' '],
//   1: ['X','O','X','O','X','O','X'],
// }

// // ********* PIECE PLACEMENT COLUMN **********

// // Here I just want to figure out how I can get an 'X' for example to land where I want on the board.

// var pick = 'A';
// for (var x = 0; x < slots.length; x++) {
//   if ((x == 0) || (x == 48) || (x%7 == 0)){
//     slots[x] = '|';
//   }
//   if (pick == 'A') {
//     if (x == 3) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'B') {
//     if (x == 10) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'C') {
//     if (x == 17) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'D') {
//     if (x == 24) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'E') {
//     if (x == 31) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'F') {
//     if (x == 38) {
//       slots[x] = 'X';
//     }
//   }
//   if (pick == 'G') {
//     if (x == 45) {
//       slots[x] = 'X';
//     }
//   }
// }

//   console.log(verticalSplit);
//   console.log(slots.join(''));
//   console.log(verticalSplit);

// // ********* PIECE PLACEMENT ROW **********

// console.log(columnIDrow.join(''));
// console.log(verticalSplit);

// for (var x = 7; x >= 1; x--) {


//   for (var y = 0; y < slots.length; y++) {
//     if ((y == 0) || (y == 48) || (y%7 == 0)){
//       slots[y] = '|';
//     }

//     if (y == 3) {
//         slots[y] = boardStatusRow[x][0];
//     }

//     if (y == 10) {
//         slots[y] = boardStatusRow[x][1];
//     }

//     if (y == 17) {
//         slots[y] = boardStatusRow[x][2];
//     }

//     if (y == 24) {
//         slots[y] = boardStatusRow[x][3];
//     }
//     if (y == 31) {
//         slots[y] = boardStatusRow[x][4];
//     }

//     if (y == 38) {
//         slots[y] = boardStatusRow[x][5];
//     }

//     if (y == 45) {
//         slots[y] = boardStatusRow[x][6];
//     }

//   }
//   console.log(slots.join(''));
//   console.log(verticalSplit);
// }

// // ********* CREATE PLAYERS **********

// var player1 = {
//   turn: true,
//   piece: 'X',
// }

// var player2 = {
//   turn: false,
//   piece: 'O',
// }

// // ********* GO A TURN **********

// function playTurn(col, player) {

//   if ((col != 'A')&&(col != 'B')&&(col != 'C')&&(col != 'D')&&(col != 'E')&&(col != 'F')&&(col != 'G')) {
//     console.log('\nPlease choose a valid row!\n');
//     return;
//   }
//   if (boardColTotals[col] >= 7) {
//     console.log('\nThis row is filled. Pick another one!\n');
//     return;
//   }

//   boardStatusCol[col][boardColTotals[col]] = player.piece;
//   boardColTotals[col] = boardColTotals[col] + 1;

//   console.log(boardStatusCol);
// }

// playTurn('A', player1);
// playTurn('A', player1);


// TESTING VERSION 2

console.log('\nWelcome to Connect Four!\n');

var boardStatusCol = {
  A: [' ',' ',' ',' ',' ',' ',' '],
  B: [' ',' ',' ',' ',' ',' ',' '],
  C: [' ',' ',' ',' ',' ',' ',' '],
  D: [' ',' ',' ',' ',' ',' ',' '],
  E: [' ',' ',' ',' ',' ',' ',' '],
  F: [' ',' ',' ',' ',' ',' ',' '],
  G: [' ',' ',' ',' ',' ',' ',' '],
}

var boardColTotals = {
  A: 0, B: 0, C: 0, D: 0, E: 0, F: 0, G: 0,
}

function postBoard() {

  var columnIDrow = Array(50).join(' ').split('');
  var columnIDs = ['A','B','C','D','E','F','G'];
  var idIndexCount = 0;
  for (var x = 0; x < columnIDrow.length; x++) {
    if (x%7 == 0){
      columnIDrow[x + 3] = columnIDs[idIndexCount];
      idIndexCount = idIndexCount + 1;
    }
  }
  console.log(columnIDrow.join(''));
  var verticalSplit = Array(50).join('-');
  var slots = Array(50).join(' ').split('');
  console.log(verticalSplit);
  for (var x = 7; x >= 1; x--) {
    for (var y = 0; y < slots.length; y++) {
      if ((y == 0) || (y == 48) || (y%7 == 0)){slots[y] = '|';}
      if (y == 3) {slots[y] = boardStatusCol['A'][x-1];}
      if (y == 10) {slots[y] = boardStatusCol['B'][x-1];}
      if (y == 17) {slots[y] = boardStatusCol['C'][x-1];}
      if (y == 24) {slots[y] = boardStatusCol['D'][x-1];}
      if (y == 31) {slots[y] = boardStatusCol['E'][x-1];}
      if (y == 38) {slots[y] = boardStatusCol['F'][x-1];}
      if (y == 45) {slots[y] = boardStatusCol['G'][x-1];}
    }
    console.log(slots.join(''));
    console.log(verticalSplit);
  }
  console.log('\n');
}

var player1 = {
  turn: true,
  piece: 'X',
}

var player2 = {
  turn: false,
  piece: 'O',
}

function playTurn(col, player) {

  if ((col != 'A')&&(col != 'B')&&(col != 'C')&&(col != 'D')&&(col != 'E')&&(col != 'F')&&(col != 'G')) {
    console.log('\nPlease choose a valid row!\n');
    return;
  }
  if (boardColTotals[col] >= 7) {
    console.log('\nThis row is filled. Pick another one!\n');
    return;
  }

  boardStatusCol[col][boardColTotals[col]] = player.piece;
  boardColTotals[col] = boardColTotals[col] + 1;
}

// ********* CREATE CONNECT FOUR LOGIC **********

// This will be the toughest part of this program. I want to create a function that can check the board for connect four.

// My initial thought on how to do this is to loop through each square and check for four up, four down, four to the left, to the right, and 45 degree shift of the previous four. I won't have to worry about hitting a 4-in-a-row in the middle becuase I will eventually hit the end of the combo in my intitial loop. I am not sure if this is the best way to do this but I'll just get going and figure it out as I go.

  // As I was doing this I figured out that I can just choose one planar direction. I can choose to check up instead of up and down, and right instead of left and right...

var boardTest = {
  A: ['a1','a2','a3','a4','a5','a6','a7'],
  B: ['b1','b2','b3','b4','b5','b6','b7'],
  C: ['c1','c2','c3','c4','c5','c6','c7'],
  D: ['d1','d2','d3','d4','d5','d6','d7'],
  E: ['e1','e2','e3','e4','e5','e6','e7'],
  F: ['f1','f2','f3','f4','f5','f6','f7'],
  G: ['g1','g2','g3','g4','g5','g6','g7'],
}

var arrayTest = [[]];
// Loops through columns
for (var prop in boardTest) {

  // Loops though row
  for (var x = 1; x <= 7; x++) {

    console.log(boardTest[prop][x-1])
    console.log(boardTest[prop][x-1])

    if //check four in a row up {

      if // row num < 5 {
        // add them up
        // check addition
      }

    }

    if //check four in a row right {

      if // col num < 5 {
        // add them up
        // check addition
      }

    }

    if //check four in a diag up right {

      if // row num < 5 && col num < 5 {
        // add them up
        // check addition
      }
    }

    if //check four in a diag down right {

      if // row num > 3 && col num < 5 {
        // add them up
        // check addition
      }
    }
  }
}



// postBoard();
// playTurn('A', player1);
// postBoard();
// playTurn('A', player2);
// postBoard();




// Refactored Code



// Reflection
//
//
//
//
//
//
//
//