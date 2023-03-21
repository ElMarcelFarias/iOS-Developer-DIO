import UIKit

let individualScores = [75,43,103,87,12]
var teamScore = 0

for score in individualScores {
    
    if(score > 50) {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

print(teamScore)

var optionalString: String? = "Olá"
print(optionalString == nil)
var optionalName: String? = "Matheus de Santos"
var greeting = "Olá"

if let name = optionalName {
    greeting = "Olá, \(name)"
}


let nickName: String? = nil //"Marcel Leite de Farias"
let fullName: String = "Matheus de Deus"
let informalGreeting = "Oi \(nickName ?? fullName)"

let vegetable = "pimentão vermelho"

switch vegetable {
    
case "salção":
    print("Adicione algumas uvas")
case "pepino", "agriao":
    print("isso daria um bom lanche")
case let x where x.hasPrefix("pimentão"): //atribuindo valor do case na constant X para utilizar o metodo
    print("é picante \(x)?")
default:
    print("Tudo vai bem na sopa!")
}

let interestingNumber = [
    "Melhor": [2,3,5, 7, 11, 13],
    "Fibonacci": [1,1,2,3,5,8],
    "Quadrado": [1,4,9,16,25],
]

var largest = 0

for (_, numbers) in interestingNumber {
    for numbers in numbers {
        if numbers > largest {
            largest = numbers
        }
    }
}

print(largest)


var n = 2
while n < 100 {
    n *= 2
}
print(n)


var m = 2
repeat {
    m *= 2
} while m < 100
print(m)


var total = 0
for i in 0..<4 {
    total += i
}
print(total)


var newTotal = 0
for i in 0...4 {
    newTotal += i
}
print(newTotal)
