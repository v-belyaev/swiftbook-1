//: [**Предыдущее задание <- 1.3.5**](@previous)

import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */

/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).

 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.

 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */

enum CalculationType {
    case addition
    case subtraction
    case multiplication
    case division
}

let firstNumber: Int = 10
let secondNumber: Int = 50

let mathOperation: CalculationType = .addition

switch mathOperation {
case .addition:
    print(firstNumber + secondNumber)
case .subtraction:
    print(firstNumber - secondNumber)
case .multiplication:
    print(firstNumber * secondNumber)
case .division:
    print(firstNumber / secondNumber)
}

enum CurrencyUnit {
    case rouble
    case dollar(DollarCountries)
    case euro
    
    enum DollarCountries {
        case usa
        case canada
        case australia
    }
}

let banknote: CurrencyUnit = .dollar(.canada)

//: Задание 6 из 6 | **Конец**
