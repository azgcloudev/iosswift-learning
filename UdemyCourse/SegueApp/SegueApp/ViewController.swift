//
//  ViewController.swift
//  SegueApp
//
//  Created by Aldair Zamora on 22/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var myName = ""
    
    @IBAction func nextTapped(_ sender: Any) {
        myName = nameText.text! // force wrap since value will always be at least empty string
        // go to second VC when tapped
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // check if the segue identifier exists
        if segue.identifier == "toSecondVC" {
            
            // create the destination view controller variable
            // will cast the variable with 'as'
            let destinationVC = segue.destination as! SecondViewController
            
            // now can access properties in the destination VC
            destinationVC.name = "Name: \(myName)"
        }
    }
}

