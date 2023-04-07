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

        if let n1 = Int(firstNumber.text!) {
            if let n2 = Int(secondNumber.text!) {

                let result = n1 * n2
                resultLabel.text = String(result)
            } else {
                let warningOperation: String = "NaN"
                resultLabel.text = warningOperation
            }
        } else {
            let warningOperation: String = "NaN"
            resultLabel.text = warningOperation
        }


    }


    @IBAction func divisionBtn(_ sender: Any) {

        if let n1 = Double(firstNumber.text!) {
            if let n2 = Double(secondNumber.text!) {

                var result: Double;

                if (n1 == 0 && n2 == 0) {
                    result = 0;
                    resultLabel.text = String(format: "%.0f", result)
                } else {
                    result = n1 / n2
                    resultLabel.text = String(format: "%.2f", result)
                }

            } else {
                let warningOperation: String = "NaN"
                resultLabel.text = warningOperation
            }
        } else {
            let warningOperation: String = "NaN"
            resultLabel.text = warningOperation
        }


    }


    @IBAction func additionBtn(_ sender: Any) {

        if let n1 = Int(firstNumber.text!) {
            if let n2 = Int(secondNumber.text!) {

                let result = n1 + n2
                resultLabel.text = String(result)
            } else {
                let warningOperation: String = "NaN"
                resultLabel.text = warningOperation
            }
        } else {
            let warningOperation: String = "NaN"
            resultLabel.text = warningOperation
        }

    }


    @IBAction func substractionBtn(_ sender: Any) {

        if let n1 = Int(firstNumber.text!) {
            if let n2 = Int(secondNumber.text!) {

                let result = n1 - n2
                resultLabel.text = String(result)
            } else {
                let warningOperation: String = "NaN"
                resultLabel.text = warningOperation
            }
        } else {
            let warningOperation: String = "NaN"
            resultLabel.text = warningOperation
        }


    }

}

