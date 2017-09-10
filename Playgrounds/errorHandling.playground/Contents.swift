// Swift - An Introduction to Apple's Open Source Language


/**
 ---- ERROR HANDLING ----
 */


/**
 ---- PROPAGATING THE ERROR ----
 */


enum CoffeeMachineError: Error {
    case outOfBeans
    case needsMaintenance
}


class CoffeeMachine{
    var beans = 20
    var count = 1
    
    func makeCoffee() throws{
        if(count < 6){
            
            if(beans > 0){
                print("Enjoy your cup of coffee!")
                beans -= 1
                count += 1
            }
            else{
                throw CoffeeMachineError.outOfBeans
            }
        }
        else{
            throw CoffeeMachineError.needsMaintenance
        }
        
    }
    
}

/**
 ---- DO CATCH ----
 */

var coffeeMachine = CoffeeMachine()
for run in stride(from: 0, to: 25, by: 1){
    do{
        try coffeeMachine.makeCoffee()
    } catch CoffeeMachineError.outOfBeans{
        print("Out of Beans!")
    } catch CoffeeMachineError.needsMaintenance{
        print("Machine needs Maintenance!")
        coffeeMachine.count = 0
    }
}



/**
 ---- CONVERTING ERRORS TO OPTIONAL VALUES ----
 */

enum DigitError: Error{
    case outOfDigitsError(String)
}

var currentDigit = 9
func  getDigit() throws -> Int {
    if(currentDigit > 0){
        let tmp = currentDigit
        currentDigit -= 1
        return tmp
    }
    else{
        throw DigitError.outOfDigitsError("Sorry, no digits left...")
    }
}

for attempt in stride(from: 0, to: 10, by: 1){
    if let digit = try? getDigit(){
        print(digit)
    }
}






















