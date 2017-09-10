// Swift - An Introduction to Apple's Open Source Language

import UIKit

var str = "Hello, playground"

var offeredStudies = [String: String]()
// creates an empty [String: String] dictionary

offeredStudies["SWD"] = "Software-Design"
offeredStudies["ITM"] = "Internettechnik"
// adds two key-value pairs to the dictionary

offeredStudies["ITM"] = "Internettechnik und Mediendesign"
// changes the value of "ITM"

print(offeredStudies)
// prints ["SWD": "Software-Design", "ITM": "Internettechnik und Mediendesign"]



var locations: [String: String] = ["K": "Kapfenberg", "G": "Graz", "B": "Bad Gleichenberg"]
// creates a dictionary with a dictionary literal

print("FH Joanneum has \(locations.count) locations in Styria.")
// prints "FH Joanneum has 3 locations in Styria."


for (shortcut, location) in locations{
    print("\(shortcut) is a shortcut for \(location)")
// G is a shortcut for Graz
// K is a shortcut for Kapfenberg
// B is a shortcut for Bad Gleichenberg
}
