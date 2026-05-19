import Foundation


func runFunctions (){
    let firstSurname = "Kate"
    //firstName = "Dima"// let is constant
    
    var secondSurname = "Victoria"
    secondSurname = "Elizabeth"
    secondSurname = "Arthur"
    
    print (secondSurname)
    print(firstSurname)
    print(sumSquare(x: 3, y: 4))
    print(doubleSumSquare(x: 3, y: 4))
}


// sumSquare(3, 4) = 25
func sumSquare(x: Int, y: Int) -> Int {
    x * x + y * y
}

func doubleSumSquare(x: Int, y: Int) -> Int {
    2 * sumSquare(x: x, y: y)
}


// MARK: - 9. Functionals

//printEven()

/// Print even value of array
/// - Parameters:
///   - array: an arbitrary array of integers
///   - isEven: -
func printEven(for array: [Int], isEven: Bool) {
    
    if array.isEmpty {
        return
    }
    
    let reminder = isEven ? 0 : 1
    
    for element in array {
        if element % 2 == reminder {
            print(element)
        }
    }
}

let arrayNew = [2, -10, 5, 8, -1, 7]





func printCoordinates(_ x: Double, _ y: Double) {
    print("x = \(x), y = \(y)")
}



//return value

func giveNewArray (from array: [Int]?) -> [Int] {
    guard let array = array, !array.isEmpty else {
        return []
    }
    
    var newArray = [Int]()
    
    for element in array {
        if element % 2 == 0 {
            newArray.append(element)
        }
    }
    return newArray
}

let result7 = giveNewArray(from: [1, 2, 3, 6])
let result8 = giveNewArray(from: [])



//Function overloading

func displayValue(value: Int) {
    print("integer = \(value)")
}

func displayValue(value: String) {
    print("String = \(value)")
    

}




func displaySum (x: Int, y: Int) {
    let result = x+y
    displayValue(value: result)
}




func calculate (x: Double, y: Double = 40) -> (Double, Double) {
    let sum = x + y
    let mul = x * y
    
    return (sum, mul)
}

let sumMulTuple = calculate(x: 5, y: 8)
let sumMulTuple1 = calculate(x: 5)

var a = 7
var b = 10

func swap (a: inout Int, b: inout Int) {
    let temp = b
    b = a
    a = temp
    
}

func swap<T>(a: inout T, b: inout T) {
    let temp = b
    b = a
    a = temp
    
}

var c = "123"
var d = "321"

var e = 12.5
var f = 43.7

func sum (value: Int...) -> Int {
    var sum = 0
    for elements in value {
        sum += elements
    }
    print(value[0])
    return sum
}



//MARK: Functions are first-class citizens


let swapConst = swap(a: b:)

let swapVariable = swap

var swapVariable2: (inout Int, inout Int) -> Void = swap



let sumConst: (Int...) -> Int = sum


func doMath (_ block:([Int]) -> Int, a: Int, b: Int) {
    let result = block([a, b])
    print(result)
}


func sum (value: [Int]) -> Int {
    var sum = 0
    for elements in value {
        sum += elements
    }
    return sum
}


func mul (value: [Int]) -> Int {
    var mul = 1
    for elements in value {
        mul *= elements
    }
    return mul
}





func chooseOperations (isSum: Bool) -> ([Int]) -> Int {
    if isSum {
        return sum(value:)
    } else {
        return mul(value:)
    }
}


let operation = chooseOperations(isSum: true)



//MARK: Nested function

func chooseOperations1 (isSum: Bool) -> ([Int]) -> Int {
    
    let a = 10
    
    if isSum {
        return sum(value:)
    } else {
        return mul(value:)
    }
    
    func sum (value: [Int]) -> Int {
        var sum = 0
        for elements in value {
            sum += elements
        }
        print("A = \(a)")
        return sum
    }


    func mul (value: [Int]) -> Int {
        var mul = 1
        for elements in value {
            mul *= elements
        }
        return mul
    }
    
}


let chooseSum = chooseOperations1(isSum: true)



//TODO: Homework 4 Transformation from array to Function all homeworks from 3

//23
func makeArray(from dictionary: [String: Int]) -> [Int] {
    var resultArray = [Int]()

    let minValue = dictionary["min"]!
    let maxValue = dictionary["max"]!

    for i in stride(from: minValue, through: maxValue, by: 2) {
        resultArray.append(i)
    }

    return resultArray
}

let dictionary23 = [
    "min": -100,
    "max": 42,
]

let result23 = makeArray(from: dictionary23)


//22

func arrayTransf (array: [Int]) -> [String: Double] {
    
    let min = array.min()!
    let max = array.max()!
    let sumArrayTransformed = array.reduce(0, +)
    let middle = Double(sumArrayTransformed) / Double(array.count)
    
    let dictionary5: [String: Double] = [
        "min": Double(min),
        "max": Double(max),
        "average": middle,
    ]
    
    return dictionary5
}

let arrayTransformed22 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

let result22 = arrayTransf(array: arrayTransformed22)


// 19

func sumDict (dictionary: [String: Any]) -> Int {
    var sumDictionary1 = 0

    for (_, value) in dictionary {
        if let dict = value as? [Int: Int] {
            sumDictionary1 += dict.values.reduce(0, +)
        } else if let array = value as? [Int] {
            sumDictionary1 += array.reduce(0, +)
        }
    }
    return sumDictionary1
}

let dictionary19: [String: Any] = [
    "firstInnerDictionary": [1: 11, 2: 12, 3: 13],
    "secondInnerDictionary": [1: 21, 2: 22, 3: 23],
    "array": [24, 25, 26],
]

let result19 = sumDict(dictionary: dictionary19)


// 20

func fillArray () -> [[Int]] {
    
    var emptyArray7 = [[Int]]()

    for _ in 0 ..< 5 {
        emptyArray7.append([1, 2, 3])
    }
return emptyArray7
}
let result20 = fillArray()



// 21

func arrayComb (array2D:[[Int]]) -> [Int] {
    let arrayCombined = array2D
        .flatMap { $0 }
    return arrayCombined

}

let arrayCombine1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
]

let result21 = arrayComb(array2D: arrayCombine1)



/// #1
func splitIntoPairs (array5: [Int]) -> [[Int]]{
    var result = [[Int]]()
    
    for i in stride(from: 0, to: array5.count, by: 2) {
        if i + 1 < array5.count {
            let sub = Array(array5[i ... i + 1])
            result.append(sub)
        }
    }
    return result
}

let arrayInt1 = [1, 2, 3, 4, 5, 6]

let result1 = splitIntoPairs(array5: arrayInt1)


// #2
func buildArray() -> [Int]{
    let arr1 = [1, 2, 3]
    let arr2 = [4, 5, 6]
    var newArr = arr1
    newArr.append(contentsOf: arr2)
    
    return newArr
}

let result2 = buildArray()



// 3
func sub () -> [Int] {
    let array: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let array4: Set = [3, 7, 9]
    
    return array.subtracting(array4).sorted()
}

let result5 = sub()




// 4
func sumAr (newArr6: [Int]) -> Int {
    var sum2 = 0
    for i in 0 ..< newArr6.count / 2 {
        sum2 += newArr6[i]
    }
    return sum2
}

let newArr578 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]

let result578 = sumAr(newArr6: newArr578)



// 5

func countNegative (newArr7: [Int]) -> Int {
    var count = 0
    for i in 0 ..< newArr7.count {
        if newArr7[i] < 0 {
            count += 1
        }
    }
    return count
}

/*
func countNegative(array: [Int]) -> Int {
    array.filter { $0 < 0 }.count
}
*/

let newArrCount = [1, 2, -3, 4, 5, -6, 7, 8, 9, -10, 11, 12, 13, -14]

let result25 = countNegative(newArr7: newArrCount)




// 6
func positiveNumbers (arr9: [Int]) -> [Int]{
   
    var arrPlus = [Int]()
    for i in arr9 {
        if i > 0 {
            arrPlus.append(i)
        }
    }
return arrPlus
}

let arrCountPositive = [1, 2, -3, 4, 5, -6, 7, 8, 9, -10, 11, 12, 13, -14]
let result27 = positiveNumbers(arr9: arrCountPositive)




// 7
func makeUpperwords (words: [String]) -> [String]{
    let resultWords = words.map { $0.prefix(1).uppercased() + $0.dropFirst().lowercased() }
    
    return resultWords
}

let arrayWords1 = ["one", "two", "three"]
let result28 = makeUpperwords(words: arrayWords1)



// 8

func printLetters(word: String) {
    for char in word {
        print(char)
    }
}

let wordsString2 = "abcde"





// 9

func changePositionWord (wordStringNew: String) -> String {
    var result9 = ""

    // wordStringNew.indices - Это “все индексы строки - не int”.
    // index — это не символ и не обычное число.Это специальный “адрес” символа внутри строки.
    for index in wordStringNew.indices {
        let position = wordStringNew.distance(from: wordStringNew.startIndex, to: index)
        let char = wordStringNew[index]

        if position % 2 == 0 {
            result9 += String(char).uppercased()
        } else {
            result9 += String(char).lowercased()
        }
    }
    return result9
}


let wordStringNew1 = "abcde"
let result30 = changePositionWord(wordStringNew: wordStringNew1)



// 10


func sumOddEven (array: [Int]) -> Double {
    var sumOdd = 0
    var sumEven = 0

    for i in array.indices {
        if i % 2 == 0 {
            sumEven += array[i]
        } else { sumOdd += array[i]
        }
    }

    if sumOdd != 0 {
       return Double(sumEven) / Double(sumOdd)
    } else { return 0
    }
}


let arrayInt2 = [5, 0, 7, 0, 8, 3]

let result31 = sumOddEven(array: arrayInt2)


//11

func reversed (arrayInts: [Int]) -> [Int]{
    var result10 = [Int]()

    for i in arrayInts {
        let str = String(i)
        let reversedString = String(str.reversed())
        let number = Int(reversedString)!
        result10.append(number)
    }
    return result10
}

let arrayInt23 = [123, 456, 789]

let result34 = reversed(arrayInts: arrayInt23)



// 12

func doubleArray (array: [Int]) -> [Int] {
    var result13 = [Int]()

    for i in stride(from: 0, to: array.count, by: 2) {
        let first = array[i]
        let second = array[i + 1]
        let combined = first * 10 + second
        result13.append(combined)
    }
return result13
}

let arrayNumbersDouble1 = [1, 2, 3, 4, 5, 6]

// we need let arrayInts = [12, 34, 56]

let result36 = doubleArray(array: arrayNumbersDouble1)


// 13
// var stringUpper = "duck English hello Kate"
func wordUpperC (words: String) -> String {
    let arrayString = words.split(separator: " ") // substring
    var arrayStringC = arrayString.map { String($0) } // convert to String

    for i in 0 ..< arrayStringC.count {
        if i % 2 != 0 {
            let word = arrayStringC[i]

            let first = word.prefix(1).uppercased()
            let rest = word.dropFirst()
            let newWord = first + rest
            arrayStringC[i] = newWord // changing array
        }
    }
    let result15 = arrayStringC.joined(separator: " ")
    return result15
}
let stringBefore1 = "duck english hello kate"

let result37 = wordUpperC(words: stringBefore1)





/// 14
func dublicates (array14: [Int]) -> Bool {
    for i in 0 ..< array14.count - 1 {
        if array14[i] == array14[i + 1] {
           return true
        }
    }
return false
    // - 1 need because we use [i + 1]
}

let array78 = [1, 2, 3, 3, 4, 5]

let result39 = dublicates(array14: array78)




// 15
// sorted

func sorted (array: [[Int]]) -> [[Int]]{
    let arrayDouble = array.map { $0.sorted() }
    return arrayDouble
    // element [1,4,3,2,5]   ← это $0
}

let array57 = [
    [1, 4, 3, 2, 5],
    [3, 1, 4, 5, 2],
    [2, 5, 1, 3, 4],
]

let result41 = sorted(array: array57)



// 16

func sumArray (array: [[Int]]) -> Int{
    var sumArr = 0

    for row in array {
        for value in row {
            sumArr += value
        }
    }

    return sumArr
}

let sumArray24 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
]

let result45 = sumArray(array: sumArray24)


// 17

func sumArray2D (array2D: [[[Int]]]) -> Int {
    var sumArr3 = 0

    for block in array2D {
        for row in block {
            for value in row {
                sumArr3 += value
            }
        }
    }

   return sumArr3
}

let array47 = [
    [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
    ],

    [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
    ],

    [
        [1, 2, 3],
        [4, 5, 6],
        [7, 8, 9],
    ],
]


// O(n³) for n × n × n

let result47 = sumArray2D(array2D: array47)


// 18

func dict (dictionary: [String: [Int]]) -> Int {
    var sumDictionary = 0

    for (_, value) in dictionary {
        for number in value {
            sumDictionary += number
        }
    }

  return sumDictionary

}

let dictionary49 = [
    "firstArray": [11, 12, 13],
    "secondArray": [21, 22, 23],
    "thirdArray": [24, 25, 26],
]

let result67 = dict(dictionary: dictionary49)



//task 1

func arrayDeleteDublicates (array: [Int]) -> [Int] {
    
    var dictionary = [Int: Int]()
    
    for num in array {
        dictionary[num, default: 0] += 1
    }
    
    var newArray = [Int]()
    for num in array {
        if  dictionary[num]! <=  3 {
            newArray.append(num)
        }
    }
        return newArray
        
}

let dublicate = [1, 2, 1, 1, 2, 3, 2, 1, 2]

let resultDulblicate = arrayDeleteDublicates(array: dublicate)




//task 2

func arrayTogether (array: [Int]) -> [Int] {
    if array.isEmpty {
        return []
    }
    var result = [array[0]]
    for i in 1..<array.count {
        if array[i] != array[i - 1] {
            result.append(array[i])
        }
    }
    return result
}

let together = [1, 2, 2, 5, 4, 3, 4, 4, 5]

let resultTogether = arrayTogether(array: together)



//MARK: 10.Сlosure

func testFunc (value: Int) -> Int {
    return value * 2
}

let costFunc: (Int) -> Int = testFunc


//let closure = { value in
//return value * 2}
//
//func loadImage() {
//    //load and show image
//    let startRequestDate = Date()
//    requestImage { image in
//       let finishedRequestDate = Date()
//        logRequest(startDate: startRequestDate, finishedDate: finishedRequestDate)
//    }
//}
    
//func requestImage(completion: (UIImage) -> Void) {
//        let image = UImage()
//        completion(image)
//    }
//    
//func showImage(_ image: UImage) {
//        //show image
//    }
//
//func logRequest(startDate: Date, finishedDate: Date) {
//        let timeInterval = finishedDate.timeIntervalSince(startDate)
//        print(timeInterval)
//    }


//TODO: Homework 5 Closure

//1

func sumMult(array :[[Int]],closure:([[Int]]) -> Int) -> Int {
   return closure(array)
}

let arrayFuncClosure = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
]

let closureMul = sumMult(array: arrayFuncClosure) { array in
    var mul = 1
    for innerArray in array {
        for number in innerArray {
            mul *= number
        }
    }
    return mul
}
let closureSum = sumMult(array: arrayFuncClosure) { array in
    var sum = 0
    for innerArray in array {
        for number in innerArray {
            sum += number
        }
    }
    return sum
}
let closureSub = sumMult(array: arrayFuncClosure) { array in
    var sub = 0
    for innerArray in array {
        for number in innerArray {
            sub -= number
        }
    }
    return sub
}





//2

let arrayClosure = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func arrayClos(array: [Int], closure: ([Int])-> Double) -> Double {
    return closure(array)
}


let middleClosure = arrayClos(array: arrayClosure) { array in
    var sum = 0

    for number in array {
        sum += number
    }
    let result = Double(sum) / Double(array.count)
    return result
}





let minClosure = arrayClos(array: arrayClosure) { array in
    return Double(array.min() ?? 0)
}

let maxClosure = arrayClos(array: arrayClosure) { array in
    return Double(array.max() ?? 0)
}



