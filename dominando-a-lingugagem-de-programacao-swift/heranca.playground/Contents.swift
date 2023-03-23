import UIKit

class Person {
    var age: Int
    var gender: String
    var color: String
    var maritialStatus: String
    
    init(age: Int, gender: String, color: String, miritialStatus: String) {
        self.age = age
        self.gender = gender
        self.color = color
        self.maritialStatus = miritialStatus
    }
    
    func play(sport: String) {
        print("Esporte: \(sport)")
    }
    
    //sobrecarga de metodos
    
    func play(instrument: String) {
        print("Instrumento: \(instrument)")
    }
    
}


class Men: Person {
    
}

let andy = Men(age: 19, gender: "Masculino", color: "Pardo", miritialStatus: "Solteiro")
print(andy.age)


class FootballPlayer: Person {
    override func play(sport: String) {
        print("Jogador de \(sport)")
    }
}

let footBallPlayer = FootballPlayer(age: 35, gender: "Masculino", color: "Branco", miritialStatus: "Solteiro")
footBallPlayer.play(sport: "Futebol")


class Pilot: Person {
    override func play(sport: String) {
        print("Piloto de \(sport)")
    }
}

let pilot = Pilot(age: 22, gender: "Masculino", color: "Pardo", miritialStatus: "Solteiro")
pilot.play(sport: "Formula 1")


class Rock: Person {
    override func play(instrument: String) {
        print("Toca: \(instrument)")
    }
}

let rock = Rock(age: 19, gender: "Masculinos", color: "Pardo", miritialStatus: "Solteiro")
rock.play(sport: "Não pratica esportes")
rock.play(instrument: "Bateria")


