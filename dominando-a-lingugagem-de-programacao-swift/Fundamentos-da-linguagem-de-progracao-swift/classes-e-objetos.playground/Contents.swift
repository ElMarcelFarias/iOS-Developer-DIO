import UIKit

class Shape {
    var numberofSides = 0
    func simplesDescription() -> String {
        return "Uma forma com \(numberofSides) lados."
    }
}


var shape = Shape()
shape.numberofSides = 7
var shapedDescription = shape.simplesDescription()

class NamedShape {
    var numberOfSide: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simplesDescription() -> String {
        return "Uma forma com \(numberOfSide) lados."
    }
}


class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    // para alterarmos metodos de outra classe, precisamos utilizar overrride
    override func simplesDescription() -> String {
        return "Um quadrado com lados de comprimento \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "Meu quadrado de teste")
test.area()
test.simplesDescription()


class EquilateralTriangule: NamedShape {
    var sideLength: Double = 0.0
    
    var perimeter: Double {
        get { return 3.0 * sideLength } //obter algum valor
        set { sideLength = newValue / 3.0 } //setar valor
    }
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSide = 3
    }
    
    override func simplesDescription() -> String {
        return "Um triangulo equilatero com lados de comprimento \(sideLength)"
    }
    
}

var triangle = EquilateralTriangule(sideLength: 3.1, name: "um triangulo")
print(triangle.perimeter)
triangle.perimeter = 9.1


class TriangleAndSquare {
    var triangle: EquilateralTriangule {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangule(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "Outra forma de teste")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "quadrado maior")
print(triangleAndSquare.triangle.sideLength)


let optionalSquare: Square? = Square(sideLength: 2.5, name: "quadrado opcional")
let sideLength = optionalSquare?.sideLength
