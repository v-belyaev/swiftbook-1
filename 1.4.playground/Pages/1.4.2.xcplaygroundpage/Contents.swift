//: [Previous](@previous)

import Foundation
/*:
 ### Задание 2
 2.1 Создайте целочисленные переменные `base` и `power` с любым значениями на ваше усмотрение.
 
 2.2 При помощи цикла `for in` возведите переменную `base` в степень `power` и присвойте результат переменной `result`
 
 2.3 Выведите результат на консоль в следующем виде: «<…> в <…> степени равно <…>»
*/

let base = 2
let power = 4

var result = 0.0

for degree in 1...power {
    result = pow(Double(base), Double(degree))
}

print(result)
//: [Next](@next)
