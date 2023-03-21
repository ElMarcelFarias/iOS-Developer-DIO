import UIKit

class Person {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
}

class BehaviorPerson {
    var age: Int!
    var gender: String!
    var color: String!
    var maritalStatus: String!
    
    func play(sport: String) {
        // Escreve como a instancia da pessoa irá jogar
    }
}

class Wall {
    init () {
        // execute a inicialização
    }
}

class WhiteWall {
    var length: Double
    
    init() {
        length = 5.5
        print("Criamos o objeto Wall")
        print("Length = \(length)")
    }
}

var whiteWall = WhiteWall()


class BlackWall {
    var length: Double
    
    init (length: Double) {
        self.length = length
        print("Length = \(length)")
    }
}

var blackWall = BlackWall(length: 25.0)

class LongWall {
    var length: Double
    var heigth: Double
    
    init(length: Double, heigth: Double) {
        self.length = length
        self.heigth = heigth
        print("A área é \(calculateArea())")
    }
    
    func calculateArea() -> Double {
        return length * heigth
    }
}


var calculteArea = LongWall(length: 5.00, heigth: 20.00)


class University {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    convenience init () {
        self.init(name: "UniSenai", rank: "1 lugar")
    }
}


var university = University()
print(university.name)
var university2 = University(name: "udesc", rank: "1")
print(university2.name)

class File {
    
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            print("Folder not found")
            return nil
        }
        self.folder = folder
    }
    
}


var file = File(folder: "Fotos.jpeg")

if file != nil {
    print("Arquivo encontrado com sucesso!")
} else {
    print("Erro ao encontrar arquivo! ")
}


struct PersonStruct {
    var name: String
    var age: Int
}

var personStruct = PersonStruct(name: "Pedro", age: 46)
print("Nome: \(personStruct.name)")
print("Idade: \(personStruct.age)")
