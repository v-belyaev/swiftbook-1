//: [Previous](@previous)

import Foundation

/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
*/
func getDifferenceDate(year: Int, month: Int, day: Int) -> String? {
    let endDate = Date()
    let startDateString = "\(day).\(month).\(year)"

    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"

    if let startDate = formatter.date(from: startDateString) {
        let components = Calendar.current.dateComponents([.day], from: startDate, to: endDate)
        
        let numberOfDays = components.day!
        let numberOfMonth = numberOfDays / 30
        let numberOfYears = numberOfMonth / 12
        
        return "\(numberOfYears) years, \(numberOfMonth) month, \(numberOfDays) days have passed since my birth."
    } else {
        return nil
    }
}

if let differenceBetweenTwoDates = getDifferenceDate(year: 1998, month: 06, day: 16) {
    print(differenceBetweenTwoDates)
}
//: [Next](@next)
