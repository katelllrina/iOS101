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
