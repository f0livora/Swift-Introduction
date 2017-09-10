// Swift - An Introduction to Apple's Open Source Language

import UIKit


/**
 ---- FOR IN ----
 */
let grades: [Int: String] = [1: "Sehr Gut", 2: "Gut", 3: "Befriedigend", 4: "Genügend", 5: "Nicht genügend"]

for (grade, word) in grades.sorted(by: <){
    print("\(grade) is a \"\(word)\"")
}
// 1 is a "Sehr Gut"
// 2 is a "Gut"
// 3 is a "Befriedigend"
// 4 is a "Genügend"
// 5 is a "Nicht genügend"


/**
 ---- WHILE ----
 */

let max = 100
for quarters in stride(from: 25, to: max, by: 25){
    print(quarters)
}
// 25
// 50
// 75

var cardValues = [Int]()
for value in 1...10{
    cardValues.append(value)
// creates an array with values 1 to 10 - simulates a card deck
}

var bankCount = 0
while bankCount < 21 {
    var randomIndex = Int(arc4random_uniform(UInt32(cardValues.count)))
    // creates a random number - simulats picking a random card
    bankCount += cardValues[randomIndex]
    print(bankCount)
    
    if(bankCount > 21){
        print("The bank loses!")
    }
    else if(bankCount == 21){
        print("The bank wins!")
    }
}

/**
 ---- IF ----
 */
var switchedOn = true

if(switchedOn == true){
    print("All lights are on")
} else {
    print("Can someone please turn on the light?")
}



var score = 88;

if(score > 90 && score <= 100){
    print("Perfect!")
} else if(score > 80 && score <= 90){
    print("Good Job!")
} else if(score > 70 && score <= 80){
    print("Not Bad!")
} else if(score > 60 && score <= 70){
    print("Puh, that was close!")
} else{
    print("Good luck next time")
}


/**
 ---- SWITCH ----
 */

var grade = "A"
switch grade{
case "A":
    print("Excellent")
case "B":
    print("Above average")
case "C":
    print("Satisfactory")
case "D":
    print("Below Average")
case "F":
    print("Failure")
default:
    print("Test not attempted")
}























