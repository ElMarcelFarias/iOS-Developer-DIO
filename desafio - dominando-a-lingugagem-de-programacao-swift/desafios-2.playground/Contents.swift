import UIKit


enum Cards: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine
    case king, queen, jack
    
    func description() -> String {
        switch self {
            case .king:
                return "King"
            case .queen:
                return "Queen"
            case .jack:
                return "Jack"
            default:
                return String(self.rawValue)
        }
    }
}

let cards = Cards.king
print(cards)
let cardsKing = cards.description()


struct ResultCard {
    var cards: Cards
    
    func resultCardDescription() {
        print("A carta é \(cards.description())")
    }
}

let resultCard = ResultCard(cards: .three)
resultCard.resultCardDescription()
