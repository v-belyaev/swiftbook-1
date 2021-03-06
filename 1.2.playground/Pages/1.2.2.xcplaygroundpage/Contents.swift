//: [**Предыдущее задание <- 1.2.1**](@previous)

import Foundation

/*:
### Задание 2
2.1 Создайте переменную `numberOne` и присвойте ей любое целочисленное значение
*/
let numberOne = 22

/*:
2.2 Создайте ещё одну целочисленную переменную `numberTwo` и присвойте ей любое значение меньше `numberOne`
*/
let numberTwo = 20

/*:
2.3 Присвойте новой целочисленной константе `result` результат деления `numberOne` на `numberTwo`
*/
let result = numberOne / numberTwo

/*:
2.4 Присвойте новой целочисленной константе `remainder` остаток от деления `numberOne` на `numberTwo`
*/
let remainder = numberOne % numberTwo

/*:
2.5 Выведите на консоль сообщение: «При делении <...> на <...> результат равен <...>, остаток равен <...>», подставив вместо (<...>) свои результаты.
*/
let firstStringForOutput = "При делении \(numberOne) на \(numberTwo) результат равен \(result), остаток равен \(remainder)"
print(firstStringForOutput)

/*:
2.6 Выведите на консоль фразу: «Результат деления <...> на <...> равен <...> <...>/<...>». Поясню: в математике результатом деления 5 на 3 будет натуральная дробь 1 2/3 (одна целая две третьих, здесь мы используем стандартную математическую запись, а не оператор деления). Вам необходимо вывести на консоль именно такой результат от деления `numberOne` на `numberTwo` в виде натуральной дроби — например «Результат деления 7 на 3 равен 2 1/3».
*/
let secondStringForOutput = "Результат деления \(numberOne) на \(numberTwo) равен \(result) \(remainder)/\(numberTwo)"
print(secondStringForOutput)

//: Задание 2 из 4 | [**Далее -> 1.2.3**](@next)
