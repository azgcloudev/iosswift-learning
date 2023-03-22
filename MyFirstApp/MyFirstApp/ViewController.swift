//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Aldair Zamora on 22/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var metallicaLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonSwap(_ sender: Any) {
        imageView.image = UIImage(named: "iron-maiden-2020")
    }
}

