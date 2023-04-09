//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Aldair Zamora on 8/4/23.
//

import UIKit

class ViewController: UIViewController {

    let myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // get the device actual width and height of the view
        let width = view.frame.size.width
        let height = view.frame.size.height


        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: (width * 0.5) - (width * 0.8 / 2), y: (height * 0.5) - (50 / 2), width: width * 0.8 , height: 50)
        view.addSubview(myLabel)
        
        
        // create a button
        let myButton = UIButton()
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction) , for: UIControl.Event.touchUpInside)
    }

    @objc func myAction() {
        myLabel.text = "Tapped"
    }

}

