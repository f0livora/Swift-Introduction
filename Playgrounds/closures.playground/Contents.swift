// Swift - An Introduction to Apple's Open Source Language

/**
 ---- CLOSURES ----
 */
import Foundation
import Darwin

// basic syntax
let add = {(int1: Int, int2: Int) -> Int in return int1 + int2}

let subtract: (Int, Int) -> Int = { int1, int2 in return int1 - int2 }

let multiply: (Int, Int) -> Int = { $0 * $1 }

var result = add(20,5)      // 25
result = multiply(20,5)     // 100
result = subtract(20,5)     // 15



/**
 ---- TRAILING CLOSURE ----
 */


// create an Array with values from 1950 to 2020
var years = [Int]()
for year in stride(from: 1950, to: 2020, by: 1){
    years.append(year)
}

let leapYears = years.map{ (year) -> String in
    var output = ""
    var year = year
    if(year%400 == 0){
        output.append(String(year)+" is a leap year")
    }
    else if(year % 100 != 0 && year % 4 == 0){
        output.append(String(year)  + " is a leap year")
    }
    else{
        output.append(String(year) + " is not a leap year")
    }
    return output
}

for year in leapYears{
    print(year)
}

