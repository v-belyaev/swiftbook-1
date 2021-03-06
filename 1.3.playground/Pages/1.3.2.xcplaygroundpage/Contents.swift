//: [**Предыдущее задание <- 1.3.1**](@previous)

import Foundation

/*:
## Упражнение - опциональные значения

>Во время выполнения упражнений данного плейграунда, вы будете выводить в консоль опциональные значения.  Компилятор Swift выдаст предупреждение: «Expression implicitly coerced from `Int?` to Any».  Для целей выполнения заданий, можете данные предупреждения игнорировать.

Ваше приложение запрашивает пользователя его возраст.  Введённые пользователем данные передаются вам в виде текста, `String`.  Однако, вам нужно сохранить значение в виде целого числа `Int`.  Пользователь может сделать ошибку и ввести неверные данные.

Объявите переменную `userInputAge` типа `String` и присвойте ей значение "34e" для моделирования опечатки.  Затем определите константу `userAge` типа `Int` и используйте конструктор `Int` для преобразования `userInputAge`.  Какую ошибку вы получаете?
*/

//let userInputAge = "34e"

// Получаем ошибку — Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
//let userAge: Int = Int(userInputAge)

/*:
Теперь поменяйте тип `userAge` на `Int?`, и напечатайте значение `userAge`.  Почему значение `userAge` равно `nil`?  Ответьте в комментарии или внутри команды print.
*/
//let userAge: Int? = Int(userInputAge)

// Потому что в строке userInputAge встречается буквенный символ, а также инициализатор Int от String возвращает опционал
//print(userAge)

/*:
Теперь исправьте опечатку в значении `userInputAge`.  Что-нибудь в результатах вывода кажется вам неуместным?

Напечатайте `userAge` снова, но теперь извлеките `userAge` с помощью оператора «!».
*/
let userInputAge = "34"
let userAge: Int? = Int(userInputAge)

// Да, в выводе ниже вместе с числом печатается Optional()
print(userAge)

// А вот тут четенько
print(userAge!)

/*:
Используйте привязку опционалов для извлечения `userAge`.  Если `userAge` содержит значение, выведите его в консоль.
*/
if let age = userAge {
    print("Возраст пользователя — \(age)")
}

/*:
Теперь снова эмулируйте опечатку и попробуйте вывести на консоль целочисленное значение переменной `userInputAge`, при помощи оператора "!". Какую ошибку вы получите? Почему?
*/
let secondUserInputAge = "22a"
let secondUserAge: Int? = Int(secondUserInputAge)

// Получаем — Fatal error: Unexpectedly found nil while unwrapping an Optional value
// Потому что мы делаем force unwrapping (принудительное извлечение) — то есть гарантируем, что значение в secondUserAge будет точно не `nil`
// Но значение `nil`, ибо в строке secondUserInputAge встречается буквенный символ
print(secondUserAge!)

//: Задание 2 из 6 | [**Далее -> 1.3.3**](@next)
