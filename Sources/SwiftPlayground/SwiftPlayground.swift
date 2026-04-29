//// The Swift Programming Language
//// https://docs.swift.org/swift-book

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

            1. Purchase
            2. Check Stock
            3. Show Prices & Limits
            4. Add Kumara to Stall Container
            5. Summary
            6. Exit
            """

        let priceAndInfoMenu = """
            Kumara is charged at 3 dollars ($3) a kilogram.
            Each Bag costs 20 cents ($0.20)
            The least amount of kumara that can be purchased in a single purchase is 100 grams (0.100 KG)
            The Amount of kumara in the bin is 50 KG
            The most kumara that a bag can have is 5KG.
            The most amount of kumara that can be purchased in a single purchase is the entire remaining stock but limited to the amount of bags and bag weight.
            The amount of bags is 5,000
            """

        func printMainMenu() {
            print("\(mainMenu)")
        }

        func inputMenuPrint() {
            print("Enter a listed option: ")
        }

        func printPriceAndInfoMenu() {
            print("\(priceAndInfoMenu)")
        }

        func printSeperator() {
            print()
        }

        printMainMenu()
        printSeperator()
        inputMenuPrint()
    }
}
