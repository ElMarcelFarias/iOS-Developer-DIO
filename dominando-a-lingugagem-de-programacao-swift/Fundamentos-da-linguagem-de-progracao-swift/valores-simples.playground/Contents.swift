import UIKit

/* Valores Simples */
var myVariable: Int = 42
myVariable = 12

let myConstant = 10

//exemplo

let implicitInteger = 70
let implicitDouble = 70.0
let explicitInteger: Int = 20
let explicitDouble: Double = 20.0


let label = "A largura é"
let width = 94
let widthLabel = label + String(width) //String() convertendo valores para String, para realizar o concat

let apples = 3
let oranges = 5
let appleSummary = "Eu tenho: \(apples) maças"
let fruitSummary = "Eu tenho: \(apples + oranges) frutas"


let quotation = """
eu disse "eu tenho \(apples) maçãs.
e então eu disse: "Eu tenho \(apples + oranges) pedaços de frutas."
"""

var fruits = ["morangos", "limões", "tangerinas"]
fruits[1] = "uvas"

var occupations = [
    "João": "Capitão",
    "Pedro": "Mecânico",
]

occupations["Maria"] = "Relações Públicas"
fruits.append("amoreas") //adiciona um novo item ao array de dados
print(fruits)

//dictionary e array vazios
let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]

fruits = []
occupations = [:]
