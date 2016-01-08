 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Connect Four is the Game!
// Goals: The first player to get four pieces in a row wins.
// Characters: player1 and player2
// Objects: player1, player2, and three others that correspond to the current status of the board.
// Functions: checkForWinner(), playTurn(), postBoard().

// This program is intended for a console window. I have some "graphics" that I do not know how they will turn out in other platforms.

// Pseudocode

// My pseudocode is is mixed in with my TESTING VERSIONs. I find it helpful to outline with pseudocode and fill in with actual code. Please read through both testing versions to see my thought process.

// ******************** TESTING VERSION 1 *********************

// My initial code is just to get things working. I will create objects and functions in my refactored solution. I just want to start out making sure each segment works. This is useful for me so that I can see the process I went through later on.

// console.log('\nWelcome to Connect Four!\n');

// // ********* BOARD CREATION **********
// // Here I want to create the board for visual purposes in the terminal. I will try to create it row by row. First I'll focus on just creating an empty board, then I will focus on being able to place pieces in them (maybe in another testing version).

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

// // I am not sure exactly how I will want to store the data of the current status of the game, but below are some options. The ABC's represent columns and the 123's represent rows.

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

// // Here I just want to figure out how I can get an 'X' for example to land where I want on the board. This is just to select column. I will have to figure out how to select row later anf then combine.

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

// // Here I figure out how to select and place a piece in a specific row. The problem is that I used the row array (123's). In the next testing version I will try to change this beacuse I want to use the column array (ABC's). This is working for now.

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

// // Each player only needs two properties: Is it their turn? and What piece do they play? Very simple.

// var player1 = {
//   turn: true,
//   piece: 'X',
// }

// var player2 = {
//   turn: false,
//   piece: 'O',
// }

// // ********* GO A TURN **********

// // I just want to get this to work. I can change the structure later is desired. This puts the corresponding player piece in the correct column and row.
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

// // I will also create a logic check function to check for Connect Four. I'll do this later. I kind of want to clean up my code first.

// // ******************** TESTING VERSION 2 *********************

// // I did a bunch of refactoring here. I was able to consolidate all of my board data to the column array (ABC's) and just added up what row was next in each column with the totals object. I also created the post board function which posts the current board status.

// // I also created a piece value object to check for COnnect Four. X's are worth 1 and O's are worth 10. When I check, If I every get a total of 4 in four spots in a row, player1 (piece is X) has connect four. If I ever get a total of  40 in four spots in a row, player2 (piece is O) has connect four.

// console.log('\nWelcome to Connect Four!\n');

// var boardStatusCol = {
//   A: [' ',' ',' ',' ',' ',' ',' '],
//   B: [' ',' ',' ',' ',' ',' ',' '],
//   C: [' ',' ',' ',' ',' ',' ',' '],
//   D: [' ',' ',' ',' ',' ',' ',' '],
//   E: [' ',' ',' ',' ',' ',' ',' '],
//   F: [' ',' ',' ',' ',' ',' ',' '],
//   G: [' ',' ',' ',' ',' ',' ',' '],
// }

// var connectFourCheck = {
//   A: [0,0,0,0,0,0,0],
//   B: [0,0,0,0,0,0,0],
//   C: [0,0,0,0,0,0,0],
//   D: [0,0,0,0,0,0,0],
//   E: [0,0,0,0,0,0,0],
//   F: [0,0,0,0,0,0,0],
//   G: [0,0,0,0,0,0,0],
// }

// var boardColTotals = {
//   A: 0, B: 0, C: 0, D: 0, E: 0, F: 0, G: 0,
// }

// function postBoard() {

//   var columnIDrow = Array(50).join(' ').split('');
//   var columnIDs = ['A','B','C','D','E','F','G'];
//   var idIndexCount = 0;
//   for (var x = 0; x < columnIDrow.length; x++) {
//     if (x%7 == 0){
//       columnIDrow[x + 3] = columnIDs[idIndexCount];
//       idIndexCount = idIndexCount + 1;
//     }
//   }
//   console.log(columnIDrow.join(''));
//   var verticalSplit = Array(50).join('-');
//   var slots = Array(50).join(' ').split('');
//   console.log(verticalSplit);
//   for (var x = 7; x >= 1; x--) {
//     for (var y = 0; y < slots.length; y++) {
//       if ((y == 0) || (y == 48) || (y%7 == 0)){slots[y] = '|';}
//       if (y == 3) {slots[y] = boardStatusCol['A'][x-1];}
//       if (y == 10) {slots[y] = boardStatusCol['B'][x-1];}
//       if (y == 17) {slots[y] = boardStatusCol['C'][x-1];}
//       if (y == 24) {slots[y] = boardStatusCol['D'][x-1];}
//       if (y == 31) {slots[y] = boardStatusCol['E'][x-1];}
//       if (y == 38) {slots[y] = boardStatusCol['F'][x-1];}
//       if (y == 45) {slots[y] = boardStatusCol['G'][x-1];}
//     }
//     console.log(slots.join(''));
//     console.log(verticalSplit);
//   }
//   console.log('\n');
//   console.log(connectFourCheck);
// }

// var player1 = {
//   name: 'Player 1',
//   turn: true,
//   piece: 'X',
//   pieceValue: 1,
// }

// var player2 = {
//   name: 'Player 2',
//   turn: false,
//   piece: 'O',
//   pieceValue: 10,
// }

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
//   connectFourCheck[col][boardColTotals[col]] = player.pieceValue;
//   boardColTotals[col] = boardColTotals[col] + 1;
// }

// // ********* CREATE CONNECT FOUR LOGIC **********

// // This will be the toughest part of this program. I want to create a function that can check the board for connect four.

// // My initial thought on how to do this is to loop through each square and check for four up, four down, four to the left, to the right, and 45 degree shift of the previous four. I won't have to worry about hitting a 4-in-a-row in the middle becuase I will eventually hit the end of the combo in my intitial loop. I am not sure if this is the best way to do this but I'll just get going and figure it out as I go.

//   // As I was doing this I figured out that I can just choose one planar direction. I can choose to check up instead of up and down, and right instead of left and right...

// var boardTest = {
//   A: ['a1','a2','a3','a4','a5','a6','a7'],
//   B: ['b1','b2','b3','b4','b5','b6','b7'],
//   C: ['c1','c2','c3','c4','c5','c6','c7'],
//   D: ['d1','d2','d3','d4','d5','d6','d7'],
//   E: ['e1','e2','e3','e4','e5','e6','e7'],
//   F: ['f1','f2','f3','f4','f5','f6','f7'],
//   G: ['g1','g2','g3','g4','g5','g6','g7'],
// }

// function checkForWinner() {
//   var colLabels = ['A','B','C','D','E','F','G'];
//   // Loops through columns
//   for (var col = 1; col <= 7; col++) {
//     // console.log('col: ' + col + '\n');
//     colLetter = colLabels[col-1];

//     // Loops though row
//     for (var row = 1; row <= 7; row++) {
//       // console.log('row: ' + row + '\n');
//       if (row < 5) {
//         totalUp =  connectFourCheck[colLetter][(row-1)] +
//                   connectFourCheck[colLetter][(row)] +
//                   connectFourCheck[colLetter][(row + 1)] +
//                   connectFourCheck[colLetter][(row + 2)];
//         if (totalUp == 4) {
//           console.log('\n' + player1.name + ' has Connect Four!\n');
//           return;
//         }
//         if (totalUp == 40) {
//           console.log('\n' + player2.name + ' has Connect Four!\n');
//           return;
//         }
//       }

//       // if //check four in a row up {
//       //   if // row num < 5 {
//       //     // add them up
//       //     // check addition
//       //   }
//       // }

//       if (col < 5) {
//         totalUp =  connectFourCheck[colLabels[col - 1]][(row-1)] +
//                   connectFourCheck[colLabels[col]][(row-1)] +
//                   connectFourCheck[colLabels[col+1]][(row-1)] +
//                   connectFourCheck[colLabels[col+2]][(row-1)];

//                   // console.log('total: ' + totalUp + '\n');
//                   // console.log('col: ' + colLabels[col-1] + ' val: ' +connectFourCheck[colLabels[col-1]][(row-1)] + '\n');
//                   // console.log('col+1: ' + colLabels[col-1] + ' val: ' + connectFourCheck[colLabels[col]][(row-1)] + '\n');
//                   // console.log('col+2: ' + colLabels[col-1] + ' val: ' + connectFourCheck[colLabels[col+1]][(row-1)] + '\n');
//                   // console.log('col+3: ' + colLabels[col-1] + ' val: ' + connectFourCheck[colLabels[col+2]][(row-1)] + '\n');
//         if (totalUp == 4) {
//           console.log('\n' + player1.name + ' has Connect Four!\n');
//           return;
//         }
//         if (totalUp == 40) {
//           console.log('\n' + player2.name + ' has Connect Four!\n');
//           return;
//         }
//       }

//       // if //check four in a row right {
//       //   if // col num < 5 {
//       //     // add them up
//       //     // check addition
//       //   }
//       // }

//       if (col < 5 && row < 5) {
//         totalUp =  connectFourCheck[colLabels[col -1 ]][(row-1)] +
//                   connectFourCheck[colLabels[col]][(row)] +
//                   connectFourCheck[colLabels[col+1]][(row+1)] +
//                   connectFourCheck[colLabels[col+2]][(row+2)];
//         if (totalUp == 4) {
//           console.log('\n' + player1.name + ' has Connect Four!\n');
//           return;
//         }
//         if (totalUp == 40) {
//           console.log('\n' + player2.name + ' has Connect Four!\n');
//           return;
//         }
//       }

//       // if //check four in a diag up right {
//       //   if // row num < 5 && col num < 5 {
//       //     // add them up
//       //     // check addition
//       //   }
//       // }

//       if (col < 5 && row > 3) {
//         totalUp =  connectFourCheck[colLabels[col-1]][(row-1)] +
//                   connectFourCheck[colLabels[col]][(row-2)] +
//                   connectFourCheck[colLabels[col+1]][(row-3)] +
//                   connectFourCheck[colLabels[col+2]][(row-4)];
//         if (totalUp == 4) {
//           console.log('\n' + player1.name + ' has Connect Four!\n');
//           return;
//         }
//         if (totalUp == 40) {
//           console.log('\n' + player2.name + ' has Connect Four!\n');
//           return;
//         }
//       }

//       // if //check four in a diag down right {
//       //   if // row num > 3 && col num < 5 {
//       //     // add them up
//       //     // check addition
//       //   }
//       // }
//     }
//   }
// }

// postBoard();
// playTurn('A', player2);
// postBoard();
// playTurn('A', player2);
// postBoard();
// checkForWinner();
// playTurn('B', player2);
// playTurn('C', player1);
// playTurn('C', player1);
// playTurn('C', player2);
// playTurn('B', player2);
// playTurn('D', player1);
// playTurn('D', player1);
// playTurn('D', player2);
// playTurn('D', player2);
// postBoard();
// checkForWinner();


// ******************** Refactored Code ********************

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

var connectFourCheck = {
  A: [0,0,0,0,0,0,0],
  B: [0,0,0,0,0,0,0],
  C: [0,0,0,0,0,0,0],
  D: [0,0,0,0,0,0,0],
  E: [0,0,0,0,0,0,0],
  F: [0,0,0,0,0,0,0],
  G: [0,0,0,0,0,0,0],
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
  name: 'Player 1',
  turn: true,
  piece: 'X',
  pieceValue: 1,
}

var player2 = {
  name: 'Player 2',
  turn: false,
  piece: 'O',
  pieceValue: 10,
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
  connectFourCheck[col][boardColTotals[col]] = player.pieceValue;
  boardColTotals[col] = boardColTotals[col] + 1;
}

function checkForWinner() {
  var colLabels = ['A','B','C','D','E','F','G'];
  for (var col = 1; col <= 7; col++) {
    colLetter = colLabels[col-1];
    for (var row = 1; row <= 7; row++) {
      if (row < 5) {
        totalUp =  connectFourCheck[colLetter][(row-1)] +
                  connectFourCheck[colLetter][(row)] +
                  connectFourCheck[colLetter][(row + 1)] +
                  connectFourCheck[colLetter][(row + 2)];
        if (totalUp == 4) {
          console.log('\n' + player1.name + ' has Connect Four!\n');
          return;
        }
        if (totalUp == 40) {
          console.log('\n' + player2.name + ' has Connect Four!\n');
          return;
        }
      }
      if (col < 5) {
        totalUp =  connectFourCheck[colLabels[col - 1]][(row-1)] +
                  connectFourCheck[colLabels[col]][(row-1)] +
                  connectFourCheck[colLabels[col+1]][(row-1)] +
                  connectFourCheck[colLabels[col+2]][(row-1)];
        if (totalUp == 4) {
          console.log('\n' + player1.name + ' has Connect Four!\n');
          return;
        }
        if (totalUp == 40) {
          console.log('\n' + player2.name + ' has Connect Four!\n');
          return;
        }
      }
      if (col < 5 && row < 5) {
        totalUp =  connectFourCheck[colLabels[col -1 ]][(row-1)] +
                  connectFourCheck[colLabels[col]][(row)] +
                  connectFourCheck[colLabels[col+1]][(row+1)] +
                  connectFourCheck[colLabels[col+2]][(row+2)];
        if (totalUp == 4) {
          console.log('\n' + player1.name + ' has Connect Four!\n');
          return;
        }
        if (totalUp == 40) {
          console.log('\n' + player2.name + ' has Connect Four!\n');
          return;
        }
      }
      if (col < 5 && row > 3) {
        totalUp =  connectFourCheck[colLabels[col-1]][(row-1)] +
                  connectFourCheck[colLabels[col]][(row-2)] +
                  connectFourCheck[colLabels[col+1]][(row-3)] +
                  connectFourCheck[colLabels[col+2]][(row-4)];
        if (totalUp == 4) {
          console.log('\n' + player1.name + ' has Connect Four!\n');
          return;
        }
        if (totalUp == 40) {
          console.log('\n' + player2.name + ' has Connect Four!\n');
          return;
        }
      }
    }
  }
}

postBoard();
playTurn('A', player2);
postBoard();
playTurn('A', player2);
postBoard();
checkForWinner();
playTurn('B', player2);
playTurn('C', player1);
playTurn('C', player1);
playTurn('C', player2);
playTurn('B', player2);
playTurn('D', player1);
playTurn('D', player1);
playTurn('D', player2);
playTurn('D', player2);
postBoard();
checkForWinner();

// Reflection

// What was the most difficult part of this challenge?

// The hardest part was figuring out how to store and access the board data. I eneded up doing it by columns but it was not easy. Becuase of timeboxing, I ran out of time for refactoring. I am sure there is a more efficient way to store and manipulate data for this game. The answers are probably on the internet somewhere. I spent a lot of time getting my solution to work. I am content with this.

// What did you learn about creating objects and functions that interact with one another?

// JavaScript makes it really easy. I kind of explained this throughout the code. See above for more details.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I used Array(), join(), and split() from the getgo. It's obvious what they do. I needed them to create my "console graphics". I like that I did it but if I were to do it over again, I would have just printed the object that stored the data. It was not really worth the time.

//How can you access and manipulate properties of objects?

// JavaScript makes it really easy. I did struggle with looping through obect properties. I tried using the (for in) technique but the problem was that I couldn't go back and forward becuase there was no indexing. It took me a bit to find a work-around for that. Let me explain further.. If i am looping through properties and am on a current property, (for in) would not let me access the property before and the property after using prop-1 and prop+1. I needed indexing. What I eneded up doing was using a regular for loop and with those indeces, accessing the name of the properties in an array I created right before the loop. I am sure there is a better and refactored way to do this but I need to move on. I think it's fine the way it is.