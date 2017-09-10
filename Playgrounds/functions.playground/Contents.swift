// Swift - An Introduction to Apple's Open Source Language

import UIKit

/**
 ---- FUNCTIONS ----
 */

func combineStrings(begin: String, end: String) -> String{
    let combinedString = begin + end
    return combinedString
}

print(combineStrings(begin: "Let's get ", end: "swifty!"))
// prints "Let's get swifty!"



/**
 TWO OR MORE RETURN VALUES
 */

func sumAndDifference(value1: Int, value2: Int) -> (sum: Int, difference: Int){
    let sum = value1 + value2
    let difference = value1 - value2
    return (sum, difference)
}

func printTimestamp(){
    let date = Date() //gets the current date
    let calendar = Calendar.current
    let hour = calendar.component(.hour, from: date)
    let minutes = calendar.component(.minute, from: date)
    print(String(hour) + ":" + String(minutes))
}

printTimestamp()
// prints hours and minutes whenever it is called
print(sumAndDifference(value1: 10, value2: 5))
// prints "(sum: 15, difference: 5)"



/** 
 ARGUMENT LABELS AND ARGUMENT NAMES
 */
func getsFined(allowed speed: Double, measured value: Double) -> String {
    if(speed < value){
        return "Driver was too fast - that's gonna be expensive"
    }
    else{
        return "Good boy"
    }
}

print(getsFined(allowed: 100, measured: 120))
// prints "Driver was to fast - that's gonna be expensive"


/**
 ---- FUNCTION WITHOUT ARGUMENT LABEL ----
 */
func add2Numbers(_ number1: Int, _ number2: Int) ->Int{
    return number1 + number2
    
}
print(add2Numbers(4,8))
// 12


func calcCart(_ prices: Double...) -> String {
    var sum: Double = 0
    for price in prices{
        sum += price
    }
    return String(sum)
}

print("The items in your cart cost " + calcCart(10.99, 9.99, 5.69))
// prints "The items in your cart cost 26.67"


/**
 ---- RETURN FUNCTION TYPES ----
 */

func calcTaxFood(_ prices: Double...) -> String {
    var sum: Double = 0
    for price in prices{
        sum += price*0.1
    }
    return String(sum)
}

func calcTaxNonFood(_ prices: Double...) -> String {
    var sum: Double = 0
    for price in prices{
        sum += price*0.2
    }
    return String(sum)
}

func chooseTaxCalculator(isFood: Bool) ->(Double...) -> String {
    return isFood ? calcTaxFood : calcTaxNonFood
    // if isFood is true, calcTaxFood will be returned 
    // it it is false, calcTaxNonFood will be returned
}
let taxFood = chooseTaxCalculator(isFood: true)(19.99, 12.99, 6.79)
let taxNonFood = chooseTaxCalculator(isFood: false)(9.99, 1.99, 14.99)
print("You paid " + taxFood + "€ taxes for your food and " + taxNonFood + "€ for the rest.")


/**
 ---- NESTED FUNCTIONS ----
 */


func itemCounter(incoming: Bool) -> (Int) -> Int {
    
    func increaseCount(count: Int) -> Int{
        print("\(count) items were added to our current stock")
        return itemsOnStock + count
    }
    
    func decreaseCount(count: Int) -> Int{
        print("\(count) items were shipped to customers")
        return itemsOnStock - count
    }
    
    return incoming ? increaseCount : decreaseCount
}

var itemsOnStock = 8
let itemsIncoming = itemCounter(incoming: true)
let itemsOutgoing = itemCounter(incoming: false)


print("There are \(itemsOnStock) items in the warehouse")
// There are 8 items in the warehouse
itemsOnStock = itemsIncoming(10)
// 10 items were added to our current stock
itemsOnStock = itemsOutgoing(7)
// 7 items were shipped to customers
print("There are \(itemsOnStock) items in the warehouse")
// There are 11 items in the warehouse
















