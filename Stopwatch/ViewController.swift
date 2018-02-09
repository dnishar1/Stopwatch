//
//  ViewController.swift
//  Stopwatch
//
//  Created by Dhairya Nishar on 4/14/17.
//  Copyright © 2017 Dhairya Nishar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    var time = 0
  
    
    @IBOutlet var timerLabel: UILabel!
    
    func increaseTimer() {
        
        time += 1
        
        timerLabel.text = "\(time)"
    }
    // IB Action for play button
    @IBAction func play(_ sender: Any) {
    
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    
    }
    
    
    @IBAction func pause(_ sender: Any) {
    
        timer.invalidate()
    
    }
    // Add a Description
    
        // This functionrestes the time and invalidates the timer once its reset and 
        // sets the starting position at 0.
        @IBAction func reset(_ sender: Any) {
    
        timer.invalidate()
        
        time = 0
        
        timerLabel.text = "0"
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

