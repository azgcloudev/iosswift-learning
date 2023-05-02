//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Aldair Zamora on 2/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // defines that the user can interact with the element
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        // link the gesture to the element that will respond to it
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    //
    @objc func changePic() {
            
        // check the current image
        let imageToDisplay = (labelText.text == "Xbox Controller") ? UIImage(named: "ps5") : UIImage(named: "xbox")
        
        // check the current text label
        let labelToDisplay = (labelText.text == "Xbox Controller") ? "Ps5 Controller" : "Xbox Controller"
        
        imageView.image = imageToDisplay
        labelText.text = labelToDisplay
    }
    
}

