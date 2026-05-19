//
//  md.swift
//  SwiftBasic
//
//
//

P - properties свойства const- привязаны к определенному типу
M - methods методы functins- привязаны к определенному типу

value type - при передаче создаёт копию
struct
Int
String
Bool
Array
Dictionary


Reference type - передаёт ссылку на один объект
class

flatMap работает с массивами  
values работает только со словарём

Выражение            Тип
dictionary           [String: [Int]]
dictionary.values    [[Int]] (по смыслу)
flatMap { $0 }       [Int]


//String:

- split
- prefix
- dropFirst
- uppercased
- joined
- distance(from: wordStringNew.startIndex, to:  index)
- reversed()

//Array:
- map
- append
        arrayResult.append(value) - Where.append(what)
- count
- filter
- forEach
- isEmpty
- indices
- contains
- min()  max()/  sometimes we use Optional (!)  -  min()!  max()!  - I use force unwrap here because I know the array is not empty.
- count
- sorted() → сам сортирует
- sorted { ... } → ты задаёшь правило
sorted { $0 < $1 } - возрастание 
sorted { $0 > $1 }  - убывание 
Что делает $0 > $1  -  это правило сортировки: если первый элемент больше второго → ставь его раньше
- flatMap убирает один уровень вложенности flatMap { $0 }. ( for Array2D Array 3D) $0 — это текущий элемент.
- reduce(0, +)
reduce превращает массив в одно значение. 0 - Это стартовое значение. + - Это операция, которую мы применяем к каждому элементу.




//Dictionary:
- removeAll()
- [String: Any] String is key, Any means any type of value. Always check if you see "Any" - if let innerDictionary = value as? [Int: Int]
- dict.values.reduce (take all value from dictionary and SUM)
Свойство             Что это
dictionary.keys      все ключи
dictionary.values    все значения
dictionary["key"]    значение по ключу



//Set:
- oddDigits.union(evenDigits).sorted()
- oddDigits.intersection(evenDigits).sorted()
- oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
- oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()


//Int:
- random
- Operands are the values or variables that operators work on.
| Operator | Meaning        |
| -------- | -------------- |
| `+`      | addition       |
| `-`      | subtraction    |
| `*`      | multiplication |
| `/`      | division       |
| `%`      | remainder      |
| `==`     | equality       |
| `&&`     | logical AND    |


//loop 
- stride(from: 0, to: , by: 2)
- break and continue
- repeat  
- switch, case case default
- while 
- ternary conditional operator
let backgroundColour = cardCount > 11 ? UIColor.red : UIColor.blue
- if else 
- if as!
- if as?
- do catch

- guard (?)  - = проверка + ранний выход, если условие НЕ выполняется → выйти из функции. переменная доступна дальше  When: Optional, validation, early exit
- for in 
for _ in 0..<5 значит: мне не нужна переменная цикла. Мы не используем i, потому что нам не важно, какая сейчас итерация: 0, 1, 2, 3 или 4. Нам нужно просто повторить действие 5 раз.


//Optionals - значение есть или nil
- nil нет значения
- ? 
- ! если уверен что не nil иначе crash
- compactMap
- try!
- throw / throws
- optional chaining
- optionalValue ?? defaultValue
если optional не nil
→ возьми его
если nil
→ возьми defaultValue




//functional 

- inout - &
- Void 
- static 
- didSet  "реакция на изменение" 
Нужно:
обновить UI
проверить данные
сохранить данные
выполнить действие
запустить логику


get and set

-----------

//Protocols 
- Equatable
- Hashable
- Comparable 
- Identifiable 
- CaseIterable
- CustomStringConvertable
- typealias
- any (any Showable)
- AnyObject
- delegate



//Generics


//Key words 
- throw / throws
- rethrow 
- defer {}
- index( i, offsetBy: size, limitedBy: endIndex)
- indirect
- as  (TestStruct() as Foo)
- is  (TestStruct() is Foo)
- get set
- none - some (case some(Value) case none)
- ExpressibleByNilLiteral
- where (Value)
- rhs lhs
- any/some
- getCurrentShape()
- deinit
- lazy


