import UIKit


// enum para criar uma enumeração

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simplesDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jack:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }
}


let ace = Rank.ace
//rawValue valor bruto - padrao
let aceRawValue = ace.rawValue
let jogerRawValue = Rank.jack.rawValue

if let convertedRank = Rank(rawValue: 1) {
    let threeDescription = convertedRank.simplesDescription()
}

enum Suit {
    case spades, hearts, diamond, clubs
    func simplesDescription () -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamond:
            return "diamond"
        case .clubs:
            return "clubs"
        }
    }
}


let hearts = Suit.hearts
let heartsDescription = hearts.simplesDescription()


enum ServerResponse {
    case result (String, String)
    case failure (String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let fail = ServerResponse.failure("Fora do intervalo")

switch success {
case let .result(sunrise, sunset):
    print("O nascer do sol é \(sunrise) e o por do sol é \(sunset)")
case let .failure(fail):
    print("Falha...: \(fail)")
}

//structs sao sempre copiadas
//classes sao referencias

//STRUCTS -> values tips
//CLASSES -> reference tips

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "O \(rank.simplesDescription()) do \(suit.simplesDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
