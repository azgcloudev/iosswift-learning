//
//  ViewController.swift
//  CardWorkout
//
//  Created by Aldair Zamora on 27/5/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    @IBOutlet var cardImageView: UIImageView!
//    @IBOutlet var stopButton: UIButton!
//    @IBOutlet var restartButton: UIButton!
//    @IBOutlet var rulesButton: UIButton!
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        stopButton.layer.cornerRadius = 8
//        restartButton.layer.cornerRadius = 8
//        rulesButton.layer.cornerRadius = 8
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }

    @IBAction func stopButtonTapped(_ sender: Any) {
    }


    @IBAction func restartButtonTapped(_ sender: Any) {
    }

    @IBAction func rulesButtonTapped(_ sender: Any) {
    }

}

