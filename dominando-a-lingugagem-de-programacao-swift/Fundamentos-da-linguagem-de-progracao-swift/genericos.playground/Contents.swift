import UIKit


func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    
    return result
}

makeArray(repeating: "bater", numberOfTimes: 5)


enum OptionalValue<Warapped> {
    case none
    case some(Warapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)

