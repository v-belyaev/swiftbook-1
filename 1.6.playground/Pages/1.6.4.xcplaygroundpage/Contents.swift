//: [Previous](@previous)

import Foundation

/*:
 ## Задание 4
 4.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */
class Employee {
    let salary: Int
    let name: String
    let surname: String
    
    init(name: String, surname: String, salary: Int) {
        self.name = name
        self.surname = surname
        self.salary = salary
    }
}

//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*
let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]

//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*
var employees: [Employee] = []
for _ in 1...10 {
    if let randomName = names.randomElement(), let randomSurname = surnames.randomElement() {
        employees.append(Employee(name: randomName, surname: randomSurname, salary: Int.random(in: 1000...2000)))
    }
}

//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»
for employee in employees {
    print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}
print("")

//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
let otherEmployees = employees.filter { $0.salary.isMultiple(of: 2) }

for employee in otherEmployees {
    print("\(employee.name) \(employee.surname)'s salary is $\(employee.salary)")
}
