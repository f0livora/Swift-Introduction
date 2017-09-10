// Swift - An Introduction to Apple's Open Source Language

import XCTest

struct HelloWorld {
    var text = "Hello, World!"
}

func testExample() {
    XCTAssertEqual(HelloWorld().text, "Hello, World!")
}


class Calculator{
    let add = {(int1: Int, int2: Int) -> Int in return int1 + int2}
    
    let subtract: (Int, Int) -> Int = { int1, int2 in return int1 - int2 }
    
    let multiply: (Int, Int) -> Int = { $0 * $1 }
    
    let device: (Int, Int) -> Int = { $0 / $1 }
}



var calculator = Calculator()


func testAdd(){
    let result = calculator.add(1,3)
    XCTAssertEqual(result, 4)
}
