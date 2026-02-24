// The Swift Programming Language
// https://docs.swift.org/swift-book

func print(board: [[String]]) {
    board.forEach { line in
        print("\(line[0]) | \(line[1]) | \(line[2])")
        print("--+---+--")
    }
    print()
}

func askForPosition(board: [[String]]) -> [Int] {
    while true {    
        print("Please enter the row number 1-3: ")
        let userInput = readLine()!
        let rowNumber = Int(userInput)! -1

        print("Please enter the column number 1-3: ")
        let userInput2 = readLine()!
        let columnNumber = Int(userInput)! -1

        if board[rowNumber][columnNumber] == "."{
        return [rowNumber, columnNumber]}
    }
}

@main
struct SwiftPlayground {
    static func main() {
        var player = "0"

        var board = [
            [".", ".", "."],  // row 0
            [".", ".", "."],  // row 1
            [".", ".", "."],  // row 3
        ]

        print(board: board)

        
        while true {
        // Ask for user's move.
        let position = askForPosition(board: board)
        board[position[0][position[1]]] = player
        
        if player == "0" {
            player = "X"
        } else {
            player = "0"
        }

        print(board: board)
        }
    }

        // // First move: 0 in middle
        // board[1][1] = "0"
        // print(board: board)

        // // Second move: X in top-left
        // board[0][0] = "X"
        // print(board: board)

        // // Third move: 0 top-right
        // board[0][2] = "0"
        // print(board: board)

        // // Fourth move: X in bottom-left
        // board[2][0] = "X"
        // print(board: board)

        // // Fifth move: 0 in middle-left
        // board[1][0] = "0"
        // print(board: board)

        // // Sixth move: X in middle-right
        // board[1][2] = "X"
        // print(board: board)

        // // Seventh move: 0 in bottom-middle
        // board[2][1] = "0"
        // print(board: board)

        // // Eighth move: X in bottom-right
        // board[2][2] = "X"
        // print(board: board)

        // // Nineth move: 0 in top-middle
        // board[0][1] = "0"
        // print(board: board)
    }

