import UIKit


protocol Bird: CustomStringConvertible {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var maximumSpeed: Double { get }
}

struct Parrot: Bird, Flyable {
    let name: String
    let amplitude: Double
    let frequency: Double
    let canFly: Bool = true
    
    var maximumSpeed: Double {
        3 * amplitude * frequency
    }
    
}

let parrot = Parrot(name: "Papagaio", amplitude: 12.0, frequency: 5.0)
print("O \(parrot.name) voa na velocidade máxima de \(parrot.maximumSpeed) km/h")

struct Penguin: Bird {
    var name: String
    var canFly: Bool = false
}

let penguin = Penguin(name: "Penquin")
print("\(penguin.name) é um pássaro que voa? \(penguin.canFly ? "Sim" : "Não")")

extension Bird {
    var canFly: Bool { self is Flyable }
}


struct Dove: Bird, Flyable {
    let name: String
    let amplitude: Double
    let frequency: Double
    
    var maximumSpeed: Double {
        3 * amplitude * frequency
    }
}

struct Ostrich: Bird {
    let name: String
}


let dove = Dove(name: "Pombo", amplitude: 14.0, frequency: 3.0)
print("\(dove.name) voa? \(dove.canFly ? "Sim" : "Não"). Em qual velicidade máxima?? \(dove.maximumSpeed) km/h")

let ostrich = Ostrich(name: "Avestruz")
print("\(ostrich.name) voa? \(ostrich.canFly ? "Sim" : "Não").")

enum Swallow: Bird, Flyable {
    case african
    case europe
    case unknow
    
    var name: String {
        switch self {
        case . african:
            return "Andorinha Africana"
        case .europe:
            return "Andorinha Europeia"
        case .unknow:
            return "Andorinha"
        }
    }
    
    var maximumSpeed: Double {
        
        switch self {
        case .african:
            return 10.0
        case .europe:
            return 9.9
        case .unknow:
            fatalError("Não sabemos a velocidade que a Andorinha voa!")
        }
        
    }
    
}


extension Swallow {
    var canFly: Bool {
        self !=  .unknow
    }
}


Swallow.unknow.canFly
Swallow.african.canFly

// COMPORTAMENTO PADRÃO

extension CustomStringConvertible where Self: Bird {
    var description: String {
        canFly ? "Pode voar" : "Não pode voar"
    }
}


print(Swallow.african)
print(Swallow.unknow)



