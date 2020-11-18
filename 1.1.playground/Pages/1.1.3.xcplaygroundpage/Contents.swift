//: [**Предыдущее задание <- 1.1.2**](@previous)

import Foundation
/*:
### Задание 3

Необходимо вычислить площадь и периметр прямоугольного треугольника.

>Условия:
Катеты прямоугольного треугольника:
AC = 8.0, CB = 6.0. Гипотенузу треугольника AB вычисляем при помощи функции `sqrt(Double)`, заменив `Double` суммой квадратов катетов

*/
// Катет AB
let firstCatheter = 8.0

// Катет CB
let secondCatheter = 6.0

// Гипотенуза
let hypotenuse = sqrt(pow(firstCatheter, 2) + pow(secondCatheter, 2))
// let hypotenuse = sqrt(firstCatheter * firstCatheter + secondCatheter * secondCatheter)

// Периметр
let perimeter = firstCatheter + secondCatheter + hypotenuse

// Площадь
let area = firstCatheter * secondCatheter / 2
//: Задание 3 из 3 | **Конец**
