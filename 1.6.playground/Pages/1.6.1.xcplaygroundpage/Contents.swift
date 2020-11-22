import Foundation

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */

class Orange {
    let color: String
    let taste: String
    let radius: Double
    
    init(color: String, taste: String, radius: Double) {
        self.color = color
        self.taste = taste
        self.radius = radius
    }
}

//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`
/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */

let someOrange = Orange(color: "Orange", taste: "Sweet", radius: 95)

//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных
let stringForOutput = "Orange has \(someOrange.color) color and \(someOrange.taste) taste"
print(stringForOutput)

//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль
let orangeVolume = 4 / 3 * Double.pi * pow(someOrange.radius, 3)
print("Orange volume == \(orangeVolume)")

/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */
extension Orange {
    var orangeVolume: Double {
        return calculateOrangeVolume()
    }
    
    func calculateOrangeVolume() -> Double {
        return 4 / 3 * Double.pi * pow(self.radius, 3)
    }
}

someOrange.orangeVolume

//: [Next](@next)
