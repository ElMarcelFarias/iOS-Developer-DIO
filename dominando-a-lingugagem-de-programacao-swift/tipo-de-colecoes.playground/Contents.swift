import UIKit

var someInts: [Int] = []

someInts.append(3)
print("a variavel é do tipo array int [Int] e tem \(someInts.count) itens.")
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
var sixDoubles = threeDoubles + anotherThreeDoubles

var shoppingList: [String] = ["Ovos", "Leite"]
print("A lista de compras contém \(shoppingList.count) itens.")

if shoppingList.isEmpty {
    print("A lista de compras está vazia.")
} else {
    print("A lista de comprar não está vazia.")
}
shoppingList.append("Farinha")
shoppingList += ["Fermento em pó"]
shoppingList += ["Paste de chocolate", "Queijo", "Manteiga"]

var fisrtItem = shoppingList[0]

shoppingList[0] = "Seis ovos"
//shoppingList[shoppingList.count] = "Sal" n pode ser feito

shoppingList[4...6] = ["Bananas", "Maçãs"]
//print(shoppingList)

shoppingList.insert("Xarope", at: 0)
//print(shoppingList)

let maple = shoppingList.remove(at: 0)
print(shoppingList)

let apple = shoppingList.removeLast()

for item in shoppingList {
    print(item)
}


for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}


var letters = Set<Character>()
print("letters é do tipo Set <Character> com \(letters.count) itens.")
letters.insert("a")
letters = []

// Set tem que ter seu tipo explicito!
var favoriteGenres: Set<String> = ["Rock", "Clássico", "RAP"]
var newfavoriteGenres: Set = ["Rock", "Clássico", "RAP"]

print("Eu tenho \(newfavoriteGenres.count) gêneros musicais favoritos!")

if favoriteGenres.isEmpty {
    print("Não tenho preferência por gêneros musicais.")
} else {
    print("Eu tenho \(newfavoriteGenres.count) gêneros musicais.")
}

favoriteGenres.insert("indie")

if favoriteGenres.contains("Rock") {
    print("TEM ROCK!")
}

if let removeRock = favoriteGenres.remove("Rock") {
    print("\(removeRock) foi removido!")
}


for genre in favoriteGenres.sorted() {
    print(genre)
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitsPrimeNumber = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
//unir
oddDigits.intersection(evenDigits).sorted()
//criar com apenas valores comuns
oddDigits.subtracting(singleDigitsPrimeNumber).sorted()
//com valores que n estao com valores especificados ou iguais
oddDigits.symmetricDifference(singleDigitsPrimeNumber).sorted()
 

//.isSubset(of: )  todos os valores estao conditos no conjunto especificado
// isSuperSet(of: ) se contem todos os valores
// isDidjoint(with) na negativa das explicacoes





//dictionary chave e valor do mesmo tipo nao temos organizacao especifica
/*
Dictionary<Key, Value>
Dictionary<String, Int>
[Key: Value]
[String: Int]
*/


var namesOfInteger: [Int: String] = [:]
namesOfInteger[16] = "dezesseis"
namesOfInteger = [:]

var namesOfDictionary: [String: String] = [
    "YZA": "Joinville - SC",
    "DUB": "Dublin"
]

print("Existem \(namesOfDictionary.count) itens dentro do dictionary ")

if namesOfInteger.isEmpty {
    print("Está vazio")
} else {
    print("n está vazio")
}

namesOfDictionary["NAME"] = "Marcel"
print(namesOfDictionary.count)


if let oldValue = namesOfDictionary.updateValue("matheus", forKey: "NAME") {
    print("O nome foi alterado, nome anterior: \(oldValue)")
}

if let name = namesOfDictionary["NAME"] {
    print("O nome do aeroporto é \(name)")
} else {
    print("esse nome é nulo")
}

//namesOfDictionary["NAME"] = nil

if let removeValue = namesOfDictionary.removeValue(forKey: "NAME") {
    print("nome removido é \(removeValue)")
}

for(dictionaryNameCode, dictionaryNameValue) in namesOfDictionary {
    print("\(dictionaryNameCode) : \(dictionaryNameValue)")
}

for dictionaryNameCode in namesOfDictionary.keys {
    print("Keys: \(dictionaryNameCode)")
}

for dictionaryNameValue in namesOfDictionary.values {
    print("Values: \(dictionaryNameValue)")
}


let nameCodes = [String](namesOfDictionary.keys)
let namesValues = [String](namesOfDictionary.values)





