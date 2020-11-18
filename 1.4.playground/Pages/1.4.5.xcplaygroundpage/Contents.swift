//: [Previous](@previous)

import Foundation
/*:
 ### Задание 5
  5.1 На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на 1. Определите при помощи цикла, через сколько дней она заберетсья на столб. Подумайте над тем, какой цикл использовать в этой ситуации.
*/

let lengthOfThePost = 10
var totalProgressTurtles = 0

let progressByDay = 2
let progressByNight = -1

var numberOfDays = 0.0

for _ in 0...UInt.max {
    // Прогресс за день
    totalProgressTurtles += progressByDay
    numberOfDays += 0.5

    if totalProgressTurtles >= lengthOfThePost {
        print("Черепаха пройдет столб за \(numberOfDays) дней")
        break
    }
    
    // Прогресс за ночь
    totalProgressTurtles += progressByNight
    numberOfDays += 0.5
    
    if totalProgressTurtles >= lengthOfThePost {
        print("Черепаха пройдет столб за \(numberOfDays) дней")
        break
    }
}

//: [Next](@next)
