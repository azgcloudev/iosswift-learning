//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Aldair Zamora on 13/4/23.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color ?? .white

        // Do any additional setup after loading the view.
    }
    


}