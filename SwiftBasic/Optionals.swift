//
//  optionals.swift
//  SwiftBasic
//
//
//
let optional: Int? = 12
let optional2: Optional<Int> = nil
let optional3: Int? = .none
let optional4: String! = nil


let arrayOfOptionals: [Int?] = [optional, optional2, optional3]

//1 Optional Binding

//if let optional {
//    
//}

//2 Nil Coalescing

let unwrapped = optional2 ?? 20

//3 Uncoditional/ Force Unwrapping

//let unwrapped2 = optional2!

//4 implicity unwrapped optionals

//5 pattern Matching

func optionals () {
    if case let value? = optional {
        
    }
    
    if case let .some(value) = optional {
        
    }

    for case let value? in arrayOfOptionals {
        print(value)
    }
    
}


//6 Compact Map

let newArray = arrayOfOptionals.compactMap { value in print(value)
    return value
}

//7 Optional Chaining
