//// The Swift Programming Language
//// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        //! Task A

        /**
        *? Creates a 2D array of temperatures with 3 rows and 4 values each.
        *? Prints the first row, two specific values using row and column indexes,
        *? then calculates and prints the average of row 2 by adding all four values and dividing by 4.
        */

        let temperatures = [
            [14.0, 18.0, 21.0, 16.0],
            [9.0, 12.0, 15.0, 11.0],
            [22.0, 25.0, 28.0, 24.0],
        ]

        print(temperatures[0])
        print(temperatures[1][2])
        print(temperatures[2][0])

        let row2Total =
            temperatures[1][0] + temperatures[1][1] + temperatures[1][2] + temperatures[1][3]
        let row2Average = row2Total / 4
        print(row2Average)

        //! Task B

        //? Loops through every value in a 3x3 table using nested for loops and prints each one.
        //? Keeps a running count so it can print the total number of values at the end.

        let table = [
            [2, 4, 6],
            [8, 10, 12],
            [14, 16, 18],
        ]

        var totalCount = 0

        for row in table {
            for value in row {
                print(value)
                totalCount += 1
            }
        }

        print("Total values printed: \(totalCount)")

        //! Task C

        /**
        *? columnTotal takes a 2D array and a column index.
        *? It loops through every row and adds the value at that column if the row is long enough to have it.
        *? Returns the total.
        *? Tested with column 0 and column 2.
        */

        func columnTotal(in table: [[Int]], column: Int) -> Int {
            var sum = 0
            for row in table {
                if column < row.count {
                    sum += row[column]
                }
            }
            return sum
        }

        let jaggedTable = [
            [3, 5, 7, 9],
            [2, 4],
            [8, 6, 1],
            [10],
        ]

        print(columnTotal(in: jaggedTable, column: 0))
        print(columnTotal(in: jaggedTable, column: 2))

        //! Task D

        /**
        *? maxValue takes a 2D array of Doubles and returns an optional.
        *? Returns nil if the array is empty.
        *? Otherwise loops through every value and tracks the largest one found.
        *? Prints a message for both the nil case and the normal case.
        */

        func maxValue(in matrix: [[Double]]) -> Double? {
            if matrix.isEmpty {
                return nil
            }

            var largest = matrix[0][0]

            for row in matrix {
                for value in row {
                    if value > largest {
                        largest = value
                    }
                }
            }

            return largest
        }

        let readings: [[Double]] = [
            [1.5, 3.2, 2.8],
            [7.1],
            [4.4, 6.0],
            [5.9, 8.3, 0.7, 2.2],
        ]

        if let max = maxValue(in: readings) {
            print("The largest value is \(max)")
        } else {
            print("The array is empty so there is no max value")
        }

        let emptyReadings: [[Double]] = []

        if let max = maxValue(in: emptyReadings) {
            print("The largest value is \(max)")
        } else {
            print("The array is empty so there is no max value")
        }

        //! Extension

        /**
        *? valueAt and valueAtDouble are helper functions that safely get a value from a 2D array.
        *? They use guard to check the row and column exist before returning anything.
        *? rowAverage uses valueAtDouble to calculate the average of one row.
        *? These helpers are used in place of direct indexing.
        */

        func valueAt(_ table: [[Int]], row: Int, column: Int) -> Int? {
            guard row >= 0 && row < table.count else {
                print("Row \(row) does not exist")
                return nil
            }
            guard column >= 0 && column < table[row].count else {
                print("Column \(column) does not exist in row \(row)")
                return nil
            }
            return table[row][column]
        }

        func valueAtDouble(_ table: [[Double]], row: Int, column: Int) -> Double? {
            guard row >= 0 && row < table.count else {
                print("Row \(row) does not exist")
                return nil
            }
            guard column >= 0 && column < table[row].count else {
                print("Column \(column) does not exist in row \(row)")
                return nil
            }
            return table[row][column]
        }

        func rowAverage(in table: [[Double]], row: Int) -> Double? {
            guard row >= 0 && row < table.count else {
                print("Row \(row) does not exist")
                return nil
            }
            var sum = 0.0
            for value in table[row] {
                sum += value
            }
            return sum / Double(table[row].count)
        }

        if let avg = rowAverage(in: temperatures, row: 1) {
            print("Row 2 average using helper: \(avg)")
        }

        if let val = valueAt(jaggedTable, row: 1, column: 5) {
            print(val)
        }

        if let val = valueAtDouble(readings, row: 2, column: 1) {
            print("readings[2][1] = \(val)")
        }

    }
}
