//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Aldair Zamora on 22/4/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View 2 did load")
        // load the information in the first load
        nameLabel.text = name
        
    }

}
