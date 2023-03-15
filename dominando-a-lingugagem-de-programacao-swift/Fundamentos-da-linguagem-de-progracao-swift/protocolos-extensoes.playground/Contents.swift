import UIKit

protocol ExempleProtocol {
    var simplesDescription: String {get}
    mutating func adjust()
}

class SimplesClass: ExempleProtocol {
    var simplesDescription: String = "Uma classe muito simples"
    var anotherProperty: Int  = 69105
    func adjust() {
        simplesDescription += " Agora 100% ajustado"
    }
    
}


var a = SimplesClass()
a.adjust()
let aDescription = a.simplesDescription


struct SimplesStructure: ExempleProtocol {
    var simplesDescription: String = "Uma struct simples"
    mutating func adjust() {
        simplesDescription += "ajustado"
    }
}

var b = SimplesStructure()
b.adjust()
let bDescription = b.simplesDescription


protocol SomeProtocol {
    init(someParameter: Int)
}

class SomeClass:SomeProtocol {
    required init(someParameter: Int) {
        //Implementacao
    }
}

protocol AnotherProtocol {
    init()
}

class SomeSuperClass {
    init() {
        // implementacao
    }
}


class SomeSubClass:SomeSuperClass, AnotherProtocol {
    required override init () {
        // implementacao
    }
}

protocol RandomNumberProtocol {
    func random() -> Double
}

class RandomNumber: RandomNumberProtocol {
    func random() -> Double {
        return Double.random(in: 0.4...19.2)
    }
}


class Dice {
    let sides: Int
    let generator: RandomNumberProtocol
    
    init(sides: Int, generetos: RandomNumberProtocol) {
        self.sides = sides
        self.generator = generetos
    }
    
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

var random = Dice(sides: 6, generetos: RandomNumber())

for _ in 1...5 {
    print("O lançamento dos dados aleatórios são: \(random.roll())")
}

//delegate
protocol DiceGame {
    var dice: Dice { get}
    func play()
}

/*
protocol DiceGameDelegate: AnyObject {
    func gameDidStart(_ game: DiceGame)
    func game(_ game: DiceGame, didStartNewTurnWithDiceRoll, diceRoll: Int)
    func gameDidEnd(_ game: DiceGame)
}
 */


class SomeType {
    var number: Int = 7
}

extension SomeType {
    //muda ou adiciona conteudo, novas funcionalidades
}

extension SomeType: ExempleProtocol {
    var simplesDescription: String {
        return "O número é \(number)"
    }
    
    func adjust() {
        number += 44
    }
}
