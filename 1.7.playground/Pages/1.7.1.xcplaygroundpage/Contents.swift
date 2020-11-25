import Foundation

/*:
 ## Задание 1
 1.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */

class Shape {
    var height: Float
    var width: Float
    var radius: Float
    
    var square: Float {
        return getSquareOfShape()
    }
    
    var perimeter: Float {
        return getPerimeterOfShape()
    }
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
        self.radius = 0
    }
    
    init(radius: Float) {
        self.radius = radius
        self.width = 0
        self.height = 0
    }
    
    func getSquareOfShape() -> Float {
        return width * height
    }
    
    func getPerimeterOfShape() -> Float {
        return 2 * (width + height)
    }
}

enum ShapeType: String {
    case circle = "круг"
    case rectangle = "прямоугольник"
    case ellipse = "эллипс"
}

protocol InformativeShape {
    static var shapeType: ShapeType { get }
    
    func printDescription() -> Void
}

/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */
class Circle: Shape, InformativeShape {
    static let shapeType: ShapeType = .circle
    
    required override init(radius: Float) {
        super.init(radius: radius)
    }
    
    override func getSquareOfShape() -> Float {
        return Float.pi * pow(radius, 2)
    }
    
    override func getPerimeterOfShape() -> Float {
        return 2 * Float.pi * radius
    }
    
    func printDescription() {
        let stringForOutput = "Площадь фигуры \(Circle.shapeType.rawValue) равна \(self.square), периметр (длина) равна \(self.perimeter)"
        print(stringForOutput)
    }
}

class Rectangle: Shape, InformativeShape {
    static var shapeType: ShapeType = .rectangle
    
    required override init(height: Float, width: Float) {
        super.init(height: height, width: width)
    }
    
    func printDescription() {
        let stringForOutput = "Площадь фигуры \(Rectangle.shapeType.rawValue) равна \(self.square), периметр (длина) равна \(self.perimeter)"
        print(stringForOutput)
    }
    
}

class Ellipse: Shape, InformativeShape {
    static var shapeType: ShapeType = .ellipse
    
    required override init(height: Float, width: Float) {
        super.init(height: height, width: width)
    }
    
    override func getSquareOfShape() -> Float {
        return Float.pi * width * height
    }
    
    override func getPerimeterOfShape() -> Float {
        let subexpression = (pow(height, 2) + pow(width, 2)) / 8
        return 2 * Float.pi * pow(subexpression, 1 / 2)
    }
    
    func printDescription() {
        let stringForOutput = "Площадь фигуры \(Ellipse.shapeType.rawValue) равна \(self.square), периметр (длина) равна \(self.perimeter)"
        print(stringForOutput)
    }
}

//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`
let circle = Circle(radius: 4)
let rectangle = Rectangle(height: 10, width: 20)
let ellipse = Ellipse(height: 20, width: 40)

circle.printDescription()
rectangle.printDescription()
ellipse.printDescription()

//: [Next](@next)
