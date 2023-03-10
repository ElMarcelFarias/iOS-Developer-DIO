import UIKit

func greet (person: String, day: String) -> String {
    return "Olá \(person), hoje é o dia \(day)."
    // Bloco da nossa função
}
print(greet(person: "Marcel Leite de Farias", day: "Sexta-Feira"))

func greet2(_ person: String, on day: String) -> String {
    return "Olá \(person), hoje é o dia \(day)."
}
greet2("Marcel Leite de Farias", on: "Quarta-feita") //omitir a label como parametro

/*
func addWithValue(_ value: Int, on newValue: Int) {
    
}
 */

//tupla pra retonar valores compostos
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    return(min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.1) //MAX
print(statistics.0) //MIN

//functions alinhadas
func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    add()
    
    return y
}
print(returnFifteen())

func makeIncrementer() -> ((Int) -> (Int)){
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer() // ela vai armazenar a function addOne na variavel increment, nao o número 1
print(increment(8))


func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lassThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lassThanTen)

//closures

var mappedNumbers = numbers.map({ (number: Int) -> Int in
    //corpo da closure, função anonima
    let result = 3 * number
    return result
})

mappedNumbers = numbers.map( {number in 3 * number})

let sortedNumbers = numbers.sorted{$0 > $1}
print(sortedNumbers)
    