import UIKit

//tratamento de erros
//suporte de primeira classe para erros

enum PrinterErros: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Não possui toner" {
        throw PrinterErros.noToner
    }
    return "Trabalho enviado"
}


enum VendingMachineErros: Error {
    case invalideSection
    case insufficientyFunds(coinsNeeded: Int)
    case outOfStock
}

struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinsDeposited = 0
    
    func vend(ItemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineErros.invalideSection
        }
        
        guard item.count > 0 else {
            throw VendingMachineErros.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineErros.insufficientyFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Distribuição \(name)")
    }
    
}


//let vendingMachine = VendingMachine()
//vendingMachine.coinsDeposited = 50
//for _ in 0...6 {
//    try vendingMachine.vend(ItemNamed: "Candy Bar")
//}


do {
    let printerResponse = try send(job: 1040, toPrinter: "Folha de pagamento")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Fotos da praia")
    print(printerResponse)
} catch PrinterErros.onFire {
    print("Pegou fogo em tudo.")
} catch let printerErros as PrinterErros {
    print("ERROR na impressora: \(printerErros)")
} catch {
    print(error)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8


let printerSuccess = try? send(job: 1884, toPrinter: "Memorando")
let printerFail    = try? send(job: 1885, toPrinter: "Não possui toner")

//vendingMachine
//var fridgeIsOpen = false
//let fridgeContent = ["leite","ovo","sobras"]
//func fridgeContains(_ food: String) -> Bool {
//    fridgeIsOpen = true
//    defer {
//        fridgeIsOpen = false
//    }
//
//    let result = fridgeContains.contains(food)
//    return result
//}
//
//fridgeContains("banan")
