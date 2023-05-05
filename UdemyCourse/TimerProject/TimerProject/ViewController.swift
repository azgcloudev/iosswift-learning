//
//  ViewController.swift
//  TimerProject
//
//  Created by Aldair Zamora on 4/5/23.
//

import UIKit

class ViewController: UIViewController {

    // Timer is a multithread operation
    var timer = Timer()

    var counter = 10

    @IBOutlet var timerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

//        for _ in 1...10 {
//            counter -= 1
//            timerLabel.text = "Timer: \(counter)"
//            Thread.sleep(forTimeInterval: 1) // block everything and nothing else can be used
//            //Also view won't load for 10 seconds

        timerLabel.text = "Time: \(counter)"

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }

    @objc func timerFunction() {
        
        counter = counter - 1
        timerLabel.text = "Time: \(counter)"

        if counter == 0 {
            timer.invalidate() // stops the timer
            timerLabel.text = "Time is over"
        }
    }


    @IBAction func buttonClick(_ sender: Any) {

        print("Debug: Button clicked")
    }
}

