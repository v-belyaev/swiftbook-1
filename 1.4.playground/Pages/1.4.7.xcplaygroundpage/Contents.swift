//: [Previous](@previous)

import Foundation
/*:
 ### Задание 7. От Google. Не обязательно решать.
 Дан массив 'a', который содержит целые числа в диапазоне от 1 до 'a.count'.
 Найти повторяющееся число в массиве для которого второе повторение имеет минимальный индекс.
 
 Другими словами, если в массиве есть более чем 1 дублирующееся числа, вывести то число, у которого второе повторение имеет индекс в массиве меньше, чем индекс второго повторения другого числа.
 
 Если повторяющихся чисел нет, то  ничего не выводить в консоль
 
 ПРИМЕР:
 
 Для a = [2, 1, 3, 5, 3, 2], вывод в консоль должен быть "3".

 В массиве есть два числа, которые дублируются: числа 2 и 3. Второе поторение 3 имеет меньший индекс, чем второе повторение 2, значит ответ: 3.
 
 
 Для a = [2, 2], вывод будет 2;

 Для a = [2, 4, 3, 5, 1],вывода не будет.
 
*/
// Функция для генерации массива по заданному условию
func generateAnArray(of length: Int) -> [Int] {
    let array = (1...length).map{ _ in Int.random(in: 1...length) }
    print("Сформированный массив -> \(array)")
    return array
}

// Функция алгоритма. На вход получает массив, на выходе возвращает числовое значение, если существует повторяющийся элемент в массиве по заданному условию
func algorithm(array: [Int]) -> Int? {
    // Получаем все дубликаты из массива
    let dublicateNumbers = Dictionary(grouping: array, by: {$0}).filter { $1.count > 1 }.keys
    
    // Проверяем что дубликаты присутствуют, а иначе возвращаем nil
    guard !dublicateNumbers.isEmpty else { return nil }
    
    // Создаем словарь вида — повторяющееся значение : индекс значения
    var dictionaryWithSecondIndex = [Int: Int]()
    
    for dublicates in dublicateNumbers {
        var newArray = array
        let firstIndexOfDublicate = newArray.firstIndex(of: dublicates)
        
        // Делаем force unwrap ибо уже знаем на этом этапе, что повторяющиеся элементы есть
        newArray.remove(at: firstIndexOfDublicate!)
        
        let secondIndexOfDublicate = newArray.firstIndex(of: dublicates)
        
        // Добавляем в словарь значение
        dictionaryWithSecondIndex[dublicates] = secondIndexOfDublicate!
    }
    
    // Так как записанные индексы в словаре меньше оригинальных на единицу, находим среди значений словаря минимальный, а после вовзращаем элемент оригинального массива с найденым индексом + 1
    if let minimalSecondIndex = dictionaryWithSecondIndex.values.min() {
        return array[minimalSecondIndex + 1]
    } else {
        return nil
    }
}

let length = 6
let array = generateAnArray(of: length)

let result = algorithm(array: array)

if let targetValue = result {
    print("Искомое значение -> \(targetValue)")
} else {
    print("Искомое значение отсутствует, повторений в массиве нет")
}


//: **Конец**
