//: [Previous](@previous)

import Foundation

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
*/
struct Car {
    var name: String
    let porductionYear: Int
    var horsePower: Int
}

//: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
let honda = Car(name: "Honda", porductionYear: 2008, horsePower: 130)

//: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
var hondaCivic = honda

//: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`
hondaCivic.name = "Honda Civic"

//: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу
for _ in 1...5 {
    hondaCivic.horsePower += 1
}

//: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."
func getStringForOutput(name: String, horsePower: Int) -> String {
    return "Мощность двигателя \(name) составляет \(horsePower) л.с."
}

print(getStringForOutput(name: honda.name, horsePower: honda.horsePower),
      getStringForOutput(name: hondaCivic.name, horsePower: hondaCivic.horsePower),
      separator: "\n")

//: [Next](@next)
