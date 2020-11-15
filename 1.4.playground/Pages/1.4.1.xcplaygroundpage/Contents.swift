import Foundation
/*:
 ### Задание 1
 1.1 Пользователь открывает вклад (deposit) в банке на 5 лет на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия (period) вклада.  Для решения данной задачи используйет цикл for-in. Примечание: сумма вклада увеличивается с каждым годом и процент нужно считать уже от увелеченной суммы.
 
 1.2 Выведите результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...>"
*/

let timeOfDeposit: UInt = 5
var depositAmount = 500_000.00
let rate = 11.00

var profit: UInt = 0

// Временная переменная для рассчетов
var depositAmountByTheYear = depositAmount

for _ in 0...timeOfDeposit - 1 {
    profit += UInt(depositAmountByTheYear * rate / 100)
    depositAmountByTheYear += Double(profit)
}

print("Сумма вклада через \(timeOfDeposit) лет увеличится на \(profit) и составит \(profit + UInt(depositAmount))")

//: [Next](@next)
