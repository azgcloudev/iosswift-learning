//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Aldair Zamora on 27/5/23.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        //        view.backgroundColor = color ?? UIColor.blue
        view.backgroundColor = color ?? .blue
    }

}
