// Swift - An Introduction to Apple's Open Source Language


/**
 ---- PROPERTIES ----
 */




/**
 ---- STORED PROPERTIES ----
 */

struct Animal{
    let name: String
    let legs: Int
    var weight: Double
}

var sloth = Animal(name: "slothy", legs: 4, weight: 8.5)
print("Hi my name is \(sloth.name) and i have \(sloth.weight) kilos!")

sloth.weight = 9.2
print("Put one some weight... now i have \(sloth.weight) kilos :) !")


/**
 ---- COMPUTED PROPERTIES ----
 */

struct Circle {
    var radius: Double
    var diameter: Double{
        get {
            let diameter = radius * 2
            return diameter
        }
        set(newDiameter){
            radius = newDiameter/2
        }
    }
    var area: Double{
        get{
            return radius * radius * Double.pi
        }
    }
}

var smallCircle = Circle(radius: 3)

let initialDiameter = smallCircle.diameter
smallCircle.diameter = 10
print("The circle now has a diameter of \(smallCircle.diameter), a radius of \(smallCircle.radius) and a area of \(smallCircle.area)")
// prints "The circle now has a diameter of 10.0, a radius of 5.0 and a area of 78.53"


/**
 ---- PROPERTY OBSERVERS ----
 */

class EctsCounter{
    var ectsCount: Int = 0{
        willSet(newCount){
            print("About to set your count to \(newCount) points!")
        }
        didSet{
            print("Added \(ectsCount - oldValue) points!")
        }
    }
}

let counter = EctsCounter()
counter.ectsCount += 10
// About to set your count to 10 points!
// Added 10 points!
counter.ectsCount += 4
// About to set your count to 14 points!
// Added 4 points!























