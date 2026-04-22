//// The Swift Programming Language
//// https://docs.swift.org/swift-book

/*
TODO: kumara charged at $3 per kilo
TODO: record a sale by entering the total weight sold and the number of bags used
TODO: each bag costs 20 cents
TODO: the least amount of kumara that can be purchased is a single kumara at 100 grams
TODO: most is entire remaining stock but limited to bags at which can hold up to 5kg each

*/

@main
struct SwiftPlayground {
    static func main() {


        let maximumProductAmount = 500

        print("\(maximumProductAmount)")
        
        let minimumProductAmount = 0.100

        print("\(minimumProductAmount)")
        let bagPriceAmount = 0.20

        print("\(bagPriceAmount)")
        let maxBagAmount = 5000
        print("\(maxBagAmount)")

        print("This purchase will be made in (KG).")
        print("Enter the amount of product you would like to buy: ")
        guard let userInput = readLine(), let productAmount = Double(userInput),
            productAmount >= 0.100
        else {
            print("Invaild number.")
        }

    }
}
