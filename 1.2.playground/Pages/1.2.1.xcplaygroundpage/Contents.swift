//: [**На главную страницу**](@previous)

import Foundation

/*:
### Задание 1
1.1 Объявите два свойства с типом `Float` и присвойте каждому число с дробной частью — например, 3.14 или 42.0
*/
let firstDecimal: Float = 3.14
let secondDecimal: Float = 42.0

/*:
1.2 Объявите еще одно свойство с типом `Double` и присвойте ей сумму двух переменных типа `Float`
*/
// Лучше наверно через extension чем везде тянуть Double(x * 100).rounded() / 100
extension Double {
    func rounded(to digits: Int) -> Double {
        let divisor = pow(10.0, Double(digits))
        return (self * divisor).rounded() / divisor
    }
}

let totalDecimal = Double(firstDecimal + secondDecimal).rounded(to: 2)

/*:
1.3 Выведите результат при помощи `print()`
*/
print(totalDecimal)

//: Задание 1 из 4 | [**Далее -> 1.2.2**](@next)
