//
//  ViewController.swift
//  AlertProject
//
//  Created by Aldair Zamora on 29/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameText: UITextField!

    @IBOutlet var passwordText: UITextField!

    @IBOutlet var passwordAgainText: UITextField!
    
    // creates an alert message with a single button with no actions
    func makeAlertMessage(title: String, to message: String, buttonText: String) {
        let emptyUsernameAlert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)

        // creates try again button
        let tryAgainButton = UIAlertAction(title: buttonText, style: UIAlertAction.Style.default, handler: nil)
        
        emptyUsernameAlert.addAction(tryAgainButton)
        // add the alert to the view
        self.present(emptyUsernameAlert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // SIGN UP BUTTON
    @IBAction func signUpClick(_ sender: Any) {

        // display error that username is empty
        if usernameText.text == "" {
            
            makeAlertMessage(title: "Error", to: "Username is empty", buttonText: "Try again")
            
        } else if passwordText.text == "" {
            makeAlertMessage(title: "Error", to: "Password is empty", buttonText: "Try again")
            
        } else if passwordText.text != passwordAgainText.text {
            makeAlertMessage(title: "Error", to: "Passwords do not match", buttonText: "Try again")
            
        } else {
            makeAlertMessage(title: "Success", to: "User created", buttonText: "Ok")
            
        }

//          EXPLANATION OF HOW TO CREATE ALERT AND ALERT ACTION BUTTONS
//        // creates an alert controller: UIAlertController
//        let alert = UIAlertController(title: "Error", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
//
//        // creates the button of the alert message
//        // the alert it self doesn't include it by default
//        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
//            // this code will be processed once the button in the lert message is clicked
//            print("Button clicked")
//        }
//
//        // add the button to the alert box
//        alert.addAction(okButton)
//
//        // displays the alert
//        self.present(alert, animated: true, completion: nil)
    }

}

