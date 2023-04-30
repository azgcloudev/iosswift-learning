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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // SIGN UP BUTTON
    @IBAction func signUpClick(_ sender: Any) {

        // display error that username is empty
        if usernameText.text!.count < 1 {

            let emptyUsernameAlert = UIAlertController(title: "Error", message: "Username is empty", preferredStyle: UIAlertController.Style.alert)

            // creates try again button
            let tryAgainButton = UIAlertAction(title: "Try again", style: UIAlertAction.Style.default) { UIAlertAction in
                // clears password fields
                self.passwordText.text = nil
                self.passwordAgainText.text = nil
            }

            emptyUsernameAlert.addAction(tryAgainButton)

            self.present(emptyUsernameAlert, animated: true, completion: nil)
        }

        // check if passwords matches
        if !(passwordText.text == passwordAgainText.text) {

            let passwordNotMatchAlert = UIAlertController(title: "Error",
                message: "Passwords do not match, please retype type the same password",
                preferredStyle: UIAlertController.Style.alert)

            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {
                UIAlertAction in
                // deletes de password again entry
                self.passwordAgainText.text = nil
            }

            passwordNotMatchAlert.addAction(okButton)

            self.present(passwordNotMatchAlert, animated: true, completion: nil)
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

