//
//  String.swift
//  SwiftBasic
//
//
//

let wordStringNew = "abcde"
var result9 = ""

//wordStringNew.indices - Это “все индексы строки”.
//index — это не символ и не обычное число.Это специальный “адрес” символа внутри строки.
for index in wordStringNew.indices {
    let position = wordStringNew.distance(from: wordStringNew.startIndex, to:  index)
    let char = wordStringNew[index]
    
    if position % 2 == 0 {
        result9 += String(char).uppercased()
    } else {
        result9 += String(char)
    }
}

print(result9)


Что ты хочешь    Как писать
номер символа    from startIndex to index
длина строки    from startIndex to endIndex

Вопрос    Ответ
Можно ли использовать только distance?    no
Почему?    нужен index, а его даёт indices
Можно ли решить задачу без distance?  yes

На примере "abcde"
символ    indices (index)    distance (position)
a    index(a)                 0
b    index(b)                 1
c    index(c)                 2
d    index(d)                 3
e    index(e)                 4

indices
for index in wordStringNew.indices

 indices = все позиции (индексы) строки

Очень важно

 indices НЕ даёт:

символы 
числа 0,1,2 

 indices даёт:
            index — это специальный тип:

            String.Index

            Это НЕ:

            Int
специальные индексы строки (String.Index) 
Как это выглядит по смыслу

Для строки:

let text = "abcde"

text.indices по смыслу =

[индекс a, индекс b, индекс c, индекс d, индекс e]
Что происходит в цикле
for index in text.indices {
    print(index)
}

 ты получаешь индекс каждого символа, но не сам символ

Как получить символ
let char = text[index]

 теперь:

index → позиция
text[index] → символ
Сравнение (очень важно)
1. Через символы
for char in text {
    print(char)
}

 сразу даёт:

a
b
c
d
e
2. Через индексы
for index in text.indices {
    print(text[index])
}

 тот же результат, но:

сначала получаешь индекс
потом сам берёшь символ
Зачем вообще нужны indices

 когда тебе важно:

знать позицию символа
работать с соседними символами
менять строку
делать задачи как твоя (по чётности индекса)
В твоей задаче
for index in wordStringNew.indices

 даёт:

индекс a
индекс b
индекс c
индекс d
индекс e

Потом ты делаешь:

let char = wordStringNew[index]

 получаешь сам символ

Супер-коротко
Что    Что даёт
indices    где находится символ
text[index]    сам символ
Очень простая аналогия

Представь строку как улицу:

indices → адреса домов
text[index] → кто живёт в доме


        let char = wordStringNew[index]
        Теперь по текущему индексу берём символ строки.

        Например:

        если index стоит на первом символе → char = "a"
        если на втором → char = "b"

        Только формально char тут имеет тип Character.


        indices — даёт индексы
        distance — даёт номер
        [index] — даёт символ
        uppercased() — делает большую букву
        
        
        строка -> индексы -> позиция -> символ -> проверить чётность -> добавить в result
        
        
        
        
        //second method

        let text = "abcde"
        var result3 = ""
        var position = 0

        for char in text {
            if position % 2 == 0 {
                result3 += String(char).uppercased()
            } else {
                result3 += String(char)
            }
            
            position += 1
        }

        print(result3)


        for char in text → даёт символы
        position → ты считаешь сама (0,1,2,3...)
        не нужен indices
        не нужен distance
