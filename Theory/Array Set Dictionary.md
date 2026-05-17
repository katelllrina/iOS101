//
//  Untitled.swift
//  SwiftBasic
//
//  Created by Ekaterina Kovanikova on 18/04/2026.
//
## Array
for i in array        элемент
for i in 0..<count    индекс


i             индекс
newArr6[i]    элемент

//FILTER METHOD

filter() возвращает новый массив с элементами, которые удовлетворяют условию
filter всегда работает со всем массивом
arr10.filter { $0 > 0 }
Что здесь происходит:
Часть    Значение
arr10      массив
.filter    метод
{ }        closure (условие)
$0         текущий элемент
$0 > 0     условие
Но можно ДО filter ограничить диапазон:
* через prefix (первые элементы)
arr.prefix(5).filter { $0 > 0 }
 только первые 5 элементов

*  через suffix (последние элементы)
arr.suffix(3).filter { $0 > 0 }

*  через диапазон индексов
arr[2...6].filter { $0 > 0 }
 берём часть массива → потом фильтруем

Что нужно    Как писать
элемент           $0
индекс            enumerated()
часть массива    [2...5], prefix, suffix


//MAP
map = преобразовать каждый элемент массива/ возвращает новый массив

let numbers = [1, 2, 3]

let result = numbers.map { $0 * 2 }

 результат:

[2, 4, 6]

Метод    Что делает
map       изменяет элементы
filter    убирает элементы


 Разница ещё раз (очень важно)
*  map
[1, 2, 3, 4].map { $0 % 2 == 0 }

 возвращает:

[false, true, false, true]

 он преобразует каждый элемент

*  filter
[1, 2, 3, 4].filter { $0 % 2 == 0 }

 возвращает:

[2, 4]

 он оставляет только подходящие элементы

 Как запомнить (очень простой трюк)

 map → “map = change”
 filter → “filter = remove”


[1, 2, 3, 4].map { $0 % 2 == 0 }.filter { $0 }

оставить только true value filter { $0 }
[true, true]

//SET

oddDigits: Set = [1, 3, 5, 7, 9]
evenDigits: Set = [0, 2, 4, 6, 8]
Use the intersection(_:) method to create a new set with only the values common to both sets.

Use the symmetricDifference(_:) method to create a new set with values in either set, but not both.

Use the union(_:) method to create a new set with all of the values in both sets.

Use the subtracting(_:) method to create a new set with values not in the specified set. - остаются числа которые  сравниваются и нет в B

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]


oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]
\


forEach — это метод, который:

“выполняет код для каждого элемента коллекции”
1. Array (массив)
let arr = [1, 2, 3]

arr.forEach {
    print($0)
}

 вывод:

1
2
3

 $0 = Int

 2. String (строка)
let str = "abc"

str.forEach {
    print($0)
}

 вывод:

a
b
c

 $0 = Character

 3. Dictionary (словарь)
let dict = ["a": 1, "b": 2]

dict.forEach {
    print($0)
}

 вывод:

(key: "a", value: 1)
(key: "b", value: 2)

 $0 = (key: String, value: Int) ← tuple

 4. Set (множество)
let set: Set = [1, 2, 3]

set.forEach {
    print($0)
}

 вывод (порядок НЕ гарантирован):

2
1
3

 $0 = Int

 5. Range (диапазон)
(1...3).forEach {
    print($0)
}

 вывод:

1
2
3

 $0 = Int

ВАЖНО (частая ловушка)
Dictionary и Set — порядок не гарантирован

 может быть:

(key: "b", value: 2)
(key: "a", value: 1)


Супер-краткое сравнение
Тип    $0    Что печатается
Array                  элемент    1
String                 символ    a
Dictionary             tuple    (key: "a", value: 1)
Set                    элемент    1 (в случайном порядке)
Range                  число    1




Задача 5
let arr = [10, 20, 30]
// нужны индексы

Твой ответ:

оба или loop count

 правильный ответ: только indices

Правильно:
for index in arr.indices {
    print(index)
}
Почему не нужен distance

Потому что:

в массиве индекс уже Int
не нужно преобразовывать
