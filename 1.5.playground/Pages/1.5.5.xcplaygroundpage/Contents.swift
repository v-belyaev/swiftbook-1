//: [Previous](@previous)

import Foundation

/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
*/

func getArrayOfFibonacci(from length: Int) -> [Int]? {
    guard length > 1 else {
        let array = length == 1 ? [0] : length == 0 ? [Int]() : nil
        return array
    }
    
    var firstElement = 0
    var secondElement = 1
    
    var arrayOfFibonacci = [firstElement, secondElement]
    
    for _ in 2..<length {
        let temp = secondElement
        secondElement = firstElement + secondElement
        firstElement = temp
        arrayOfFibonacci.append(secondElement)
    }
    return arrayOfFibonacci
}

func getArrayOfFibonacciWithRecursion(from length: Int) -> [Int]? {
    guard length > 1 else {
        let array = length == 1 ? [0] : length == 0 ? [Int]() : nil
        return array
    }
    
    // Уже знаем что length меньше нуля не будет, посему force unwrap 😈
    let arrayOfFibonacci = getArrayOfFibonacciWithRecursion(from: length - 1)! + getArrayOfFibonacciWithRecursion(from: length - 2)!
    return arrayOfFibonacci
}

let arrayOfFibonacci = getArrayOfFibonacci(from: 4)
let arrayOfFibonacciFromRecursion = getArrayOfFibonacci(from: 6)

//: [Next](@next)
