//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Aldair Zamora on 8/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        // casting -  as? vs as!
        // nameLabel.text = storedName as? String
        // nameLabel.text = storedName as! String // here if the cast fail, the app crash
            
        if let myName = storedName as? String {
            nameLabel.text = myName
        }
        
        if let newBirthday = storedBirthday as? String {
            birthdayLabel.text = newBirthday
        }
    }

    
    @IBAction func saveTap(_ sender: Any) {
        
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        nameLabel.text = "Name: \(nameTextField.text ?? "")"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text ?? "")"
    }
    
}

