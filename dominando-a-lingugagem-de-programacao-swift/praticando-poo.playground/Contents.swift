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


final class Grade {
    
    var name: String
    private var grades: [Float]
    private var resultGrades: Float = 0.00

    internal init(name: String, grades: [Float]) {
        self.name = name
        self.grades = grades
    }
    
    func averengingSchool () -> String {
        
        grades.forEach { grade in
            resultGrades = resultGrades + Float(grade)
            
        }
        
        let aux: Int = grades.count
        
        resultGrades = resultGrades / Float(aux)
        
        let resultText = resultGrades > 6 ? "Media da escola: \(resultGrades) está acima da média" : "Media da escola:                                      \(resultGrades) está abaixo da média"
        
        return resultText
    }
}

var jandiraGrades = Grade(name: "Escola Jandira Davilla", grades: [10.0,10.0,10.0,10.0])
var media = jandiraGrades.averengingSchool()
print("Nome da Escola: \(jandiraGrades.name) \nMedia da escola: \(media)")






