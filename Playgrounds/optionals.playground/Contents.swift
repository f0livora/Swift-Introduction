// Swift - An Introduction to Apple's Open Source Language


/*
 ---- OPTIONALS ----
 */

var salary: Double?
// salary is set to nil automatically and contains no value

salary = 1923.12
// salary now has a value but is still of type Double?

salary = nil
// salary is set back to nil and contains no value

if salary == nil{
    print("Salary for this employee hast not been set yet!")
} else {
    print("This employee's salary is \(salary!)")
}