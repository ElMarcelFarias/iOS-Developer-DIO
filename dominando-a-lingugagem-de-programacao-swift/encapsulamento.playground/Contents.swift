import UIKit


class Maths {
    let a: Int!
    let b: Int!
    
    //Encapsulado
    private var result: Int?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        result = a + b
    }
    
    func displayResult() {
        print("Result = \(result ?? 0)")
    }
}


let maths = Maths(a: 8, b: 8)
maths.add()
maths.displayResult()

open class OpenClass {
    //consegue mudar tudo
    open var age: Int = 23
    open func play(sport: String) {
        
    }
    
}

public class PublicClass {
    //pode ser usado fora do módulo porem n pode ser herdado, que seu comportamento seja alterado
    public var age: Int = 23
    public func play(sport: String) {
        
    }
}

internal class InternalClass {
    
    //usado dentro do módulo, nunca fora do módulo
    internal var age: Int = 23
    internal func play(sport: String) {
        
    }
}

fileprivate class FilePrivateClass {
    fileprivate var age: Int = 23
    fileprivate func play(sport: String) {
        
    }
}

private class PrivateClass {
    //só pode ser usada nesse aqui
    private var age: Int = 23
    fileprivate func play(sport: String) {
        
    }
}
