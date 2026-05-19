




//1 Struct - safe and fast

mutating - "struct should not change accidentally"


| Struct          | Почему              |
| --------------- | ------------------- |
| Value type      | безопаснее          |
| !Static dispatch| может быть быстрее  |
| No inheritance  | проще               |
| Less bugs       | меньше side effects |

----------
//2 Class -if you need subclass 

only Subclass can use:
- override
- super.init

| English     | Русский            |
| ----------- | ------------------ |
| inheritance | наследование       |
| superclass  | родительский класс |
| subclass    | дочерний класс     |
| override    | переопределение    |



- init - инструкция, как создать объект ( Designated Initializer & Convenience Initializer)
- self.name = name (положи пришедшее значение
в свойство объекта)
- final ( not allowed inheritance)

 self.name = name
| Code        | Meaning   |
| ----------- | --------- |
| `self.name` | property  |
| `name`      | parameter |

put parameter `name`
into property `name`

 name = userName
name → property
userName → parameter
измени свойство name и положи туда значение userName

class/struct = чертёж

init = сборка объекта по чертежу


//3 Enum - several options
rawValue
CaseIterable
allCases




| Feature                | Struct | Class            | Enum      |
| ---------------------- | ------ | ---------------- | --------- |
| Stores data            | Yes    | Yes              | Yes       |
| Methods                | Yes    | Yes              | Yes       |
| Properties             | Yes    | Yes              | Sometimes |
| Value type             | Yes    | X                | Yes       |
| Reference type         | X      | Yes              | X         |
| Inheritance            | X      | Yes              | X         |
| Override               | X      | Yes              | X         |
| init                   | Yes    | Yes              | Limited   |
| deinit                 | X      | Yes              | X         |
| mutating needed        | Yes    | X                | Yes       |
| Usually faster         | Yes    | Sometimes slower | Yes       |
| Most common in SwiftUI | Yes    | Less             | Yes       |
| UIKit uses             | Less   | Yes              | Some      |
