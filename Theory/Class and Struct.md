Struct

mutating - "struct should not change accidentally"
----------
Class 

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
