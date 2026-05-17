//
//  loop.swift
//  SwiftBasic
//
//  Created by Ekaterina Kovanikova on 13/04/2026.
//


func loop() {
    var someCounter = 0

    for i in 0...5 {
        if i % 2 == 0 {
            someCounter += 2
        }
    }

    print("Some value = \(someCounter)")
    
    
    let array5 = [1, 2, 3, 4, 5, 6]
    
    for i in stride(from: 0, to: array5.count, by: 2) {
        let sub = Array(array5[i...i+1])
        print(sub)
    }

    let array8 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let array9: Set = [3, 7, 9]
    var emptyArray5 = [Int]()

    for i in array8 {
        if !array9.contains(i) {emptyArray5.append(i)
        }
    }
    print(emptyArray5)

    
}



