//: [**Предыдущее задание <- 1.2.3**](@previous)

import Foundation

/*:
### Задание 4. Депозитный калькулятор

Сколько процентов(X) составит выплата по депозиту в A рублей при ставке B% годовых если забрать его через C лет? При условии, что проценты считаются только с тела депозита.

А,B,C - входные параметры, X - искомое

P.S. Помните, переменные нужно называть, чтоб они были понятными :-)

Пример вывода "Выплата по депозиту суммой <значение> (ставка <значение>%) через <значение> лет будет <значение>%"

*/
let depositAmount = 1_000_000_000
let interestRate = 10
let depositPeriodInYears = 10

let paymentAmountInPercentage: Int = interestRate * depositPeriodInYears
let stringForOutput = "Выплата по депозиту суммой \(depositAmount) (ставка \(interestRate)%) через \(depositPeriodInYears) лет/год будет — \(paymentAmountInPercentage)%"

print(stringForOutput)

//: Задание 4 из 4 | **Конец**
