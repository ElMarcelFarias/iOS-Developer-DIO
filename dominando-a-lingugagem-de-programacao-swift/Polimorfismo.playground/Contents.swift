import UIKit

class Player {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() {
        print("Comportamento padrão")
    }
}

class Batsman: Player {
    override func play() {
        bat()
    }
    
    private func bat() {
        print("\(name) está rebatendo a bola!")
    }
}

class BowLer: Player {
    
    override func play() {
        bow()
    }
    
    
    private func bow() {
        print("\(name) está jogando a bola")
    }
}


class CricketTeen {
    let name: String
    let team: [Player]
    
    init(name: String, team: [Player]) {
        self.name = name
        self.team = team
    }
    
    func play() {
        team.forEach{$0.play()}
    }
}

let maria = Batsman(name: "Maria")
let pedro = BowLer(name: "Pedro")
let rioCricket = CricketTeen(name: "Rio cricket", team: [pedro, maria])
rioCricket.play()

