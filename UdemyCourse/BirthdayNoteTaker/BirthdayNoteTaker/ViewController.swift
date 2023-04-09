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
    }

    
    @IBAction func saveTap(_ sender: Any) {
        
        nameLabel.text = "Name: \(nameTextField.text ?? "")"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text ?? "")"
    }
    
}

