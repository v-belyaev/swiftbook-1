//: [**Предыдущее задание <- 1.3.4**](@previous)

import Foundation

/*:
### Задание 5
5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.

В этом задании вам необходимо сделать простой валидатор российского номера.
Если длина номера больше 12, то вывести: сократите номер на N символов
Если длина номера меньше 12, то вывести: дополните номер на N символов
Если длина 12 и номер начинается с +7, то вывести: "Номер российский"

(Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.


5.2. Реализуйте ту же логику посредством if else

*/

let phoneNumberForCheck: String = "+7 (962) 932-44-56"

// Воспользуемся расширением структуры
extension String {
    func filterPhoneNumber() -> String {
        let filterString = self
            .replacingOccurrences(of: "(", with: "")
            .replacingOccurrences(of: ")", with: "")
            .replacingOccurrences(of: "-", with: "")
            .replacingOccurrences(of: " ", with: "")
        return filterString
    }
}

let filteredPhoneNumber = phoneNumberForCheck.filterPhoneNumber()

switch filteredPhoneNumber {
case filteredPhoneNumber where filteredPhoneNumber.count > 12:
    print("Сократите номер на \(filteredPhoneNumber.count - 12) символов")
case filteredPhoneNumber where filteredPhoneNumber.count < 12:
    print("Дополните номер на \(12 - filteredPhoneNumber.count) символов")
case filteredPhoneNumber where filteredPhoneNumber.count == 12 && filteredPhoneNumber.hasPrefix("+7"):
    print("Номер российский")
default:
    print("Пожалуйста, введите номер в международном формате, используя префикс `+7`")
}

// 5.2
if filteredPhoneNumber.count > 12 {
    print("Сократите номер на \(filteredPhoneNumber.count - 12) символов")
} else if filteredPhoneNumber.count < 12 {
    print("Дополните номер на \(12 - filteredPhoneNumber.count) символов")
} else if filteredPhoneNumber.count == 12 && filteredPhoneNumber.hasPrefix("+7") {
    print("Номер российский")
} else {
    print("Пожалуйста, введите номер в международном формате, используя префикс `+7`")
}

//: Задание 5 из 6 | [**Далее -> 1.3.6**](@next)
