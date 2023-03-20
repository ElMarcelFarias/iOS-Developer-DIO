import UIKit


class Person {
    
    var status: Bool = false
    
    func walking()  {
        status = true
    }
    
    func stopped() {
        status = false
    }
}

var person = Person()
person.walking()
person.stopped()

if(person.status == true) {
    print("A pessoa está andando!")
} else {
    print("A pessoa está parada!")
}


class Grade {
    func mediaSemestral (grades: [Int]) -> String {
        
        return "teste"
    }
}
