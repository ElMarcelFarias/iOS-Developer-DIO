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
    
    var name: String = ""
    var grades: [Int] = []
    var resultGrades: Double = 0.00

    init(name: String, grades: [Int]) {
        self.name = name
        self.grades = grades
    }
    
    func averengingSchool () -> String {
        for grade in grades {
            resultGrades = resultGrades + Double(grade)
        }
        
        let aux: Int = grades.count
        
        resultGrades = resultGrades / Double(aux)
        
        if((resultGrades >= 6) && (resultGrades <= 10)) {
            return "Media da escola: \(resultGrades) está acima da média"
            
        }
        return "Media da escola: \(resultGrades) está abaixo da média"
    }
}

var jandiraGrades = Grade(name: "Escola Jandira Davilla", grades: [10,10,10,10])
var media = jandiraGrades.averengingSchool()
print("Nome da Escola: \(jandiraGrades.name) \n\(media)")

