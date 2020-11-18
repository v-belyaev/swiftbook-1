//: [Previous](@previous)

import Foundation

/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */
//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму

func getAmountOfMoney(from wallet: [Double]) -> Double {
    var totalSum = 0.0
    wallet.forEach {totalSum += $0}
    return totalSum
}

let myWallet = [50.0, 500.0, 100.0, 5000.0, 1000.0, 0.1]

print("Общая сумма в кошельке == \(getAmountOfMoney(from: myWallet)) рублей")

//: [Next](@next)
