// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let maximumItemVolume = 2.0

        print("Enter the room length: ")
        guard let userInput = readLine(), let number = Double(userInput), number >= 0 else {
            print("Invaild number.")
            }
            roomLength = number
            
            print("Enter the room Width: ")
            guard let userInput = readLine(), let roomWidth = Double(userInput) else {

            print("Enter the room height: ")
            guard let userInput = readLine(), let roomHeight = Double(userInput) else {
                let roomArea = roomLength * roomWidth
                let roomVolume = roomArea * roomHeight

            print("Room Area: \(roomArea) m²")
            print("Room Volume: \(roomVolume )m³")

                let furnitureVolumes = [1.2, 0.8, 2.5, 0.6, 1.0]

                var totalFurnitureVolume = 0.0

                    furnitureVolumes.enumerated().forEach { index, volume in
                    print("Item \(index + 1): \(volume) m³")
                    if volume > maximumItemVolume {
                    print("Oversized item Detected.")
                    }
                    totalFurnitureVolume = totalFurnitureVolume + volume
                }

                let usableVolume = roomVolume - totalFurnitureVolume
                print("Usable volume: \(usableVolume) m³")
            }
        }
    }
}
