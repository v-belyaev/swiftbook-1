//: [Previous](@previous)

import Foundation

/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед

 3.4 Вызвите данный метод из экземпляра структуры
 */
struct PlayerInChess {
    let name: String
    var wins: Int
}

var vladimirKramnik = PlayerInChess(name: "Владимир Крамник", wins: 1000)

extension PlayerInChess {
    func description() {
        print("Имя игрока — \(name), кол-во побед — \(wins)")
    }
}

vladimirKramnik.description()

/*:
3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.

3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/

extension PlayerInChess {
    mutating func addWins(_ number: Int) {
        wins += number
    }
}

vladimirKramnik.addWins(100)
vladimirKramnik.description()

//: [Next](@next)
