//
//  ViewController.swift
//  WorstCalculator
//
//  Created by Aldair Zamora on 5/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    // input number textfields
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
    // label to display the result operation
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func multiplicationBtn(_ sender: Any) {
        
//        let n1: Int = Int(firstNumber.text)
        if let n1 = Int(firstNumber.text!) {
            
        }
        let n2: Int = Int(secondNumber.text!)!
        
        let result = n1 * n2
        
        resultLabel.text = String(result)
    }
    
    
    @IBAction func divisionBtn(_ sender: Any) {
    }
    
    
    @IBAction func additionBtn(_ sender: Any) {
    }
    
    
    @IBAction func substractionBtn(_ sender: Any) {
    }
    
}

