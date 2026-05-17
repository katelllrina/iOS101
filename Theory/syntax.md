# Swift Syntax


 ! - exclamation mark
 
 String:
- split
- prefix
- dropFirst
- uppercased
- joined

Array:
- map
- append
- count


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
*  через prefix (первые элементы)
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


//MARK: COMPLEXITY
for → O(n) O of n - “linear time”
for + for → O(n²) - This solution has O of n squared/quadratic time complexity.”
contains in Set → O(1) -“O of one/ constant time”
sorted → O(n log n) The algorithm runs in O of n log n time complexity
O(n³) “O of n cubed time complexity/ O of n to the power of 3”
## Operators

& apersant


### Arithmetics  

odd нечетные числа
even четные числа 
- `+`: addition/plus
- `-`: subtraction/minus
- `*`: multiplication
- `/`: division/div
- `%`: remainder (mod)

### Comparison

- `<`: less
- `>`: greater
- `<=`: less or equal
- `>=`: greater or equal
- `==`: equal
- `!=`: not equal

### Boolean (Bool)

- `&&`: boolean AND
- `||`: boolean OR
- `!`: boolean NOT

true || true = true
true || false = true
false || true = true
false || false = false


true && true = true
true && false = false
false && true = false 
false && false = false

!true = false
!false = true


let backgroundColour = cardCount > 11 ? UIColor.red : UIColor.blue

condition ? x : y
if true implement x if false implement y

## Keywords

- `func`: define new function
  - `func sumDigit(_ n: Int) -> Int { ... }`
- `let`: create new immutable variable
- `var`: create new   mutable variable
- `if/else`: condition
  - `if x < 10 { ... } else { ... }`
  - `if x < 10 { ... }`
- `return`: return result from function and end function
  - `return n`
  - `return 10`
  - `return n + 7`
  - `return lastDigit(n) * 10`



Help to navigation in code 

// TODO: Homework
//FIXME: Amend
//MARK: - Control flow


