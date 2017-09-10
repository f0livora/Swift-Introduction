//
//  ViewController.swift
//  countingStepz
//
//  Created by Michael Roitinger on 11/04/2017.
//  Copyright © 2017 Michael Roitinger. All rights reserved.
//

import UIKit
import CoreMotion

@IBDesignable
class ViewController: UIViewController {
    
    
    @IBOutlet weak var stepsDisplay: UILabel!
    @IBOutlet weak var stepsToComplete: UILabel!
    
    let calendar = Calendar.current
    let todayDate = Date()
    var stepsToday: Int = 0
    let pedometer = CMPedometer()
    
    @IBInspectable
    var targetSteps = 10000
    
    func getStartOfDay(from date: Date) -> Date{
        return Calendar.current.startOfDay(for: date)
    }
    
    func handler (_ data: CMPedometerData?, _ error: Error?) -> Void{
        let steps = data?.numberOfSteps
        stepsToday = steps as! Int
        DispatchQueue.main.async(execute: {
            // puts the closure into the Main Queue so it will be executed immediatly
            self.stepsDisplay.text = String(self.stepsToday)
            self.stepsToComplete.text = String(self.getStepsToGoal(target: self.targetSteps, actual: self.stepsToday))
        })
        
    }
    
    func getStepsToGoal(target steps: Int, actual count: Int) -> Int{
        return steps - count
    }
    
    @IBAction func getSteps(_ sender: UIButton){
        if CMMotionActivityManager.isActivityAvailable(){
            //checks if Activity Data is available
            pedometer.queryPedometerData(from: getStartOfDay(from: todayDate), to: todayDate, withHandler: handler)
            //queries data from the pedometer.
        }
    }
    
}/*
extension Date {
    func startTime() -> Date {
        return Calendar.current.startOfDay(for: self)
    }
    
    func endTime() -> Date {
        var components = DateComponents()
        components.day = 1
        components.second = -1
        return Calendar.current.date(byAdding: components, to: startTime())!
    }
}
 */

