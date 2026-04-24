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

        // let currentProductAmount = 50
        // let maximumProductAmount = 50
        // let minimumProductAmount = 0.100
        // let bagPriceAmount = 0.20
        // let maxBagAmount = 5000

        let mainMenu = """
            [The Roadside Kumara Stall]

            1.Purchase
            2.Check Stock
            3.Show Prices & Limits
            4.Exit
            """
        func printmainMenu() {
            print("\(mainMenu)")
        }

        let inputMenu = """
                print("Enter a listed option: ")
            """
        func inputMenu() {
            print("\(inputMenu)")
        }

        let priceAndInfoMenu = """
            Kumara is charged at 3 dollars ($3) a kilogram.
            Each Bag costs 20 cents ($0.20)
            The least amount of kumara that can be purchased in a single purchase is 100 grams (0.100 KG)
            The Amount of kumara in the bin is 50 KG
            The most kumara that a bag can have is 5KG.
            The most amount of kumara that can be purchased in a single purchase is the entire remaining stock but limited to the amount of bags and bag weight.
            The amount of bags is 5,000
            """
        func printPriceAndInfoMenu() {
            print("\(priceAndInfoMenu)")
        }

        printPriceAndInfoMenu()
    }
}
