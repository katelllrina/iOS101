//
//    |  |
//  --|--|--
//    |  |
//  --|--|--
//    |  |
//
//  0 - zero
//  1 - cross
//  2 - nothing
//
// Board:
//    |  |
//  --|--|--
//    |  |
//  --|--|--
//    |  |
// Player 1 (Cross) move: 1 2
//
// Board:
//    | x|
//  --|--|--
//    |  |
//  --|--|--
//    |  |
// Player 2 (Zero) move: 7 10
//
// Invalid move!!!
//    | x|
//  --|--|--
//    |  |
//  --|--|--
//    |  |
// Player 2 (Zero) move: ...
/* func TicTacToe( ) -> Int {
    
    var matrix = [
        [2, 2, 2],
        [2, 2, 2],
        [2, 2, 2]
    ]
    var cross = 1
    var zero = 0
    
}
 */
    
     // cycle: while somebody wins
    //   1. Take Player 1 (cross) input
    //   2. Validate input: (1) correct cell (2) empty cell
    //   3. Update matrix
    //   4. Check if cross wins
   // if not
    //   5. Take Player 2 (zero) input
    //   6. Validate input (player 2): (1) correct cell (2) empty cell
    //   7. Update matrix
    //   8. Check if zero wins
    // if not repeat while Player 1 (cross) or Player 2 (zero) win

    
/*

1. func validate_move(row: int, col: int) {
     1. row is valid
     2. col is valid
     3.
}
     
2. fun checkResults ( ) {
     
     check all possible winner move
     all cell need same Print, if after cross go zero and after zero go cross; its not winner ( $  winner)
     also need check when all cell cover but no one win Print Draw
     1. row 1
     2. row 2
     3. row 3
     4. col 1
     5. col 2
     6. col 3
     7. diagonal 1
     8. diagonal 2
    
     }
     
3. checkDraw ()
 
4. checkWinner 
    

    let matrix: [[Int]] = [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9]
    ]
    
    var zero = 0
    var cross = 1
    cross = pick random matrix[0][0] ... matrix[8][8]
    if after 3 moves cross
    
*/
