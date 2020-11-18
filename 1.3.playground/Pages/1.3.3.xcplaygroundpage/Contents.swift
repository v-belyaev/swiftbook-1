//: [**Предыдущее задание <- 1.3.2**](@previous)

import Foundation

/*:
### Задание 3

3.1 Определите квартал в котором вы родились, используя switch.
*/
let monthOfBirth: UInt = 6
let quarterOfBirth: UInt?

switch monthOfBirth {
case ...3:
    quarterOfBirth = 1
case 4...6:
    quarterOfBirth = 2
case 7...9:
    quarterOfBirth = 3
case 10...12:
    quarterOfBirth = 4
default:
    quarterOfBirth = nil
}

if let quarter = quarterOfBirth {
    print("Вы родились в \(quarter) квартале")
}

//: Задание 3 из 6 | [**Далее -> 1.3.4**](@next)
