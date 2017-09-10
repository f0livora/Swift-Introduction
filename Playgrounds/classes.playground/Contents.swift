// Swift - An Introduction to Apple's Open Source Language

/**
 ---- Class und Structs ----
 */
struct SoftTyre{
    var forWetCondition = false
    var grip = 3
    var durability = 3
    
}
struct HardTyre{
    var forWetCondition = false
    var grip = 1
    var durability = 5
}

class Racecar{
    let teamName = "Red Bull Racing"
    var raceWins = 37
    var tyre = SoftTyre()
    var weightEmpty = 650
    var weightWithDriver = 728
}


/**
 ---- Accessing Properties
 */

var car = Racecar()
// create an instance
print("\(car.weightEmpty)")
// prints "650"
car.weightWithDriver = 732
// assign a new value using dot syntax


print("This tyre suits for wet conditions: \(car.tyre.forWetCondition)\nand has a durability value of: \(car.tyre.durability)")
// This tyre suits for wet conditions: false
// and has a durability value of: 3

let superSoft = SoftTyre(forWetCondition: false, grip: 4, durability: 2)
// create and initialize a new instance of the SoftTyre struct
car.tyre = superSoft
print("This tyre has a durability value of: \(car.tyre.durability)")
// This tyre has a durability value of: 2



/**
 ---- Value Type ----
 */

let ultraSoft = SoftTyre(forWetCondition: false, grip: 5, durability: 1)

var tyre = ultraSoft
tyre.durability = 4
print("Durability of tyre is now \(tyre.durability)")
// Durability of tyre is now 4
print("Durability of ultraSoft ist still \(ultraSoft.durability)")
// Durability of ultraSoft ist still 1


/**
 ---- Reference Type ----
 */

let rb13 = Racecar()
rb13.raceWins = 39
rb13.weightEmpty = 680

let rb14 = rb13
rb14.raceWins = 42
rb14.weightEmpty = 700

print("rb13 now also has \(rb13.weightEmpty) kg and \(rb13.raceWins) wins")
// rb13 now also has 700 kg and 42 wins








