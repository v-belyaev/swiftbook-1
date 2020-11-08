//: [**Предыдущее задание <- 1.2.2**](@previous)

import Foundation

/*:
 ### Задание 3
 3.1 Объявите константу `dayOfBirth` и присвоейте ей дату вашего рождения
 
 3.2 Объявите константу `monthOfBirth` и присвоейте ей месяц вашего рождения
 
 3.3 Объявите константу `yearOfBirth` и присвоейте ей год вашего рождения
 */
let dayOfBirth = 16
let monthOfBirth = 6
let yearOfBirth = 1998

/*:
 3.4 Необходимо рассчитать прожитое вами время с момента вашего рождения по текущую дату в разных единицах измерения (в годах, месяцах, днях и секундах). За текущее время возьмите сегодняшнюю дату и 0 часов 0 минут. Високосные года учитывать не надо. Пусть среднее количество дней в месяце будет 30. Создайте необходимые для решения данной задачи свойства. Для расчета всех необходимых величин используйте только арифметические операторы. Ни каких функций использоваться не должно.
 */
// Вынес данные параметры для удобства проверки с иными датами
let currentDay = 8
let currentMonth = 11
let currentYear = 2020

// Если функции использовать нельзя, решаем задачу "в лоб"
let numberOfYears: Int
let numberOfMonth: Int
let numberOfDays: Int
let numberOfSeconds: Int

if currentMonth == monthOfBirth {
    if currentDay >= dayOfBirth {
        numberOfYears = currentYear - yearOfBirth
        numberOfMonth = numberOfYears * 12
        numberOfDays = numberOfMonth * 30 + currentDay - dayOfBirth
    } else {
        numberOfYears = currentYear - yearOfBirth - 1
        numberOfMonth = (numberOfYears + 1) * 12 - 1
        numberOfDays = numberOfMonth * 30 + (30 - dayOfBirth + currentDay)
    }
    
    numberOfSeconds = numberOfDays * 24 * 3600
} else if currentMonth > monthOfBirth {
    numberOfYears = currentYear - yearOfBirth
    
    if currentDay >= dayOfBirth {
        numberOfMonth = numberOfYears * 12 + currentMonth - monthOfBirth
        numberOfDays = numberOfMonth * 30 + currentDay - dayOfBirth
    } else {
        numberOfMonth = numberOfYears * 12 + currentMonth - monthOfBirth - 1
        numberOfDays = numberOfMonth * 30 + (30 - dayOfBirth + currentDay)
    }
    
    numberOfSeconds = numberOfDays * 24 * 3600
} else {
    numberOfYears = currentYear - yearOfBirth - 1
    
    if currentDay >= dayOfBirth {
        numberOfMonth = numberOfYears * 12 + currentMonth
        numberOfDays = numberOfMonth * 30 + currentDay - dayOfBirth
    } else {
        numberOfMonth = numberOfYears * 12 + currentMonth - 1
        numberOfDays = numberOfMonth * 30 + (30 - dayOfBirth + currentDay)
    }
    
    numberOfSeconds = numberOfDays * 24 * 3600
}

/*:
 3.5 Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст. Например, если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: **39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth**
 */
let stringForOutput = "\(numberOfYears) years, \(numberOfMonth) months, \(numberOfDays) days, \(numberOfSeconds) seconds have passed since my birth."

print(stringForOutput)

/*:
 3.6 Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if
 */
let quarterNumber: Int?

if monthOfBirth > 0 && monthOfBirth <= 3 {
    quarterNumber = 1
} else if monthOfBirth > 3 && monthOfBirth <= 6 {
    quarterNumber = 2
} else if monthOfBirth > 6 && monthOfBirth <= 9 {
    quarterNumber = 3
} else if monthOfBirth > 9 && monthOfBirth <= 12 {
    quarterNumber = 4
} else {
    quarterNumber = nil
}

let prepositionForSentence = quarterNumber! == 2 ? "во" : "в"
let secondStringForOutput = "Я родился \(prepositionForSentence) \(quarterNumber!) квартале."
print(secondStringForOutput)

//: Задание 3 из 4 | [**Далее -> 1.2.4**](@next)
