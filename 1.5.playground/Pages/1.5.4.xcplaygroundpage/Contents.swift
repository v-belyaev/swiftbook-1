//: [Previous](@previous)

import Foundation

/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */

func isAnEven(this number: Int) -> Bool {
    return number.isMultiple(of: 2)
}

/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/
func isDivisibleByThree(this number: Int) -> Bool {
    return number.isMultiple(of: 3)
}

/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
func generateArray(from firstValue: Int, to secondValue: Int) -> [Int] {
    return Array(firstValue...secondValue)
}

/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
*/

let arrayOfNumbers = generateArray(from: 1, to: 100)

/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
*/
func remove(from array: [Int]) -> [Int] {
    var newArray = [Int]()
    array.forEach {
        if !isAnEven(this: $0) && !isDivisibleByThree(this: $0) {
            newArray.append($0)
        }
    }
    return newArray
}

let newArrayOfNumber = remove(from: arrayOfNumbers)
print(newArrayOfNumber)

/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1900, функция возвратит 20. Для 1899 возвратит 19
 */

func getCentury(from year: Int) -> Int {
    let century = year / 100
    
    if year % 100 == 0 {
        return century
    }
    
    return century + 1
}

let century = getCentury(from: 1900)

//: [Next](@next)
