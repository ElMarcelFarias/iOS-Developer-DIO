import UIKit

//  Neste desafio, você deverá desenvolver dois projetos no playground usando o Xcode. Em ambos você deverá implementar o Paradigma de Programação Orientada a Objetos e explorar conceitos de Controle de Fluxos, Coleções, Funções, Closures, Enuns, Structs e Concorrência.

class School {
    
    fileprivate var nameSchool: String
    fileprivate var schoolAdress: String
    fileprivate var privateSchool: Bool
    fileprivate var result: Float = 0.00
    fileprivate var qtdStudent: Int
    
    
    func description() {
        print("Nome: \(nameSchool) \nQuantidade de alunos: \(qtdStudent) \nEndereço: \(schoolAdress)")
    }
    
    private func finalResultSituation(_ grades: [Float]) -> Float {
        
        grades.forEach { grades in
            result += grades
        }
        result = result / Float(grades.count)
        return result
    }
    
    func situation(_ grades: [Float]) {
        let count = grades.count
        result = finalResultSituation(grades)
        let msg = result < 6 ? "Você reprovou o ano! Suas \(count) notas ao ano não foram o suficiente para aprovação." : "Você foi aprovado!! Parabéns!"
        
        print(msg)
        print("Sua média foi: \(result)")
            
    }
    
    
    init(nameSchool: String, privateSchool: Bool, qtdStudent: Int, schoolAdress: String) {
        self.nameSchool = nameSchool
        self.privateSchool = privateSchool
        self.qtdStudent = qtdStudent
        self.schoolAdress = schoolAdress
    }
    
     
}


class Student: School {
    
    var nameStudent: String
    var age: Int
    
    override func description() {
        print("Nome: \(nameSchool) \nQuantidade de alunos: \(qtdStudent) \nEndereço: \(schoolAdress) \nNome do aluno: \(nameStudent) \nIdade: \(age)")
    }
    
    init(nameStudent: String, age: Int, nameSchool: String, privateSchool: Bool, qtdStudent: Int, schoolAdress: String) {
        
        self.nameStudent = nameStudent
        self.age = age
        super.init(nameSchool: nameSchool, privateSchool: privateSchool, qtdStudent: qtdStudent, schoolAdress: schoolAdress)
    }
    
}

var student = Student(nameStudent: "Marcel leite de Farias", age: 20, nameSchool: "E.E.B Jandira Davila", privateSchool: false,                 qtdStudent: 356, schoolAdress: "Rua emilio landman, 356")
student.situation([4,4,10,5,5])
student.description()

struct Imc {
    
    let peso: Float
    let altura: Float
    
    func calcImc() -> Float {
        return peso / (altura * altura)
    }
    
}

var myImc = Imc(peso: 65, altura: 1.72)
print(myImc.calcImc())
