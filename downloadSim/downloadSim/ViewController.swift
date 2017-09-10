//
//  ViewController.swift
//  downloadSim
//
//  Created by Michael Roitinger on 09/09/2017.
//  Copyright © 2017 Michael Roitinger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var task1: UILabel!
    @IBOutlet weak var task2: UILabel!
    var locked = false
    
    @IBAction func start(_ sender: UIButton) {
        if locked == false{
        download(size: 100, label: task1, timeout: 10)
        download(size: 130, label: task2, timeout: 7)
        }
    }

    
    func download(size: Int, label: UILabel, timeout: Int) -> Void{
        locked = true
        DispatchQueue.global(qos: .userInitiated).async {
            // puts the download simulation on a global queue and
            var amount = 0
            for _ in stride(from: 0, to: size, by: 1){
                amount += 1
                
                DispatchQueue.main.async {
                    /* All actions which change the UI have to be
                    put back on the main queue. */
                    label.text = String(amount)
                }
                // sets a timeout
                usleep(useconds_t(timeout*10000))
            }
            self.locked = false
        }
    }
}

