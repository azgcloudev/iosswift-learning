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

    // timer
    var timer: Timer!
    
    // array of the images
    
    var cards: [UIImage?] = Card.allValues

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        stopButton.layer.cornerRadius = 8
//        restartButton.layer.cornerRadius = 8
//        rulesButton.layer.cornerRadius = 8
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }

    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }

    @objc func showRandomImage() {
        // will change the card image
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        timer.invalidate()
    }


    @IBAction func restartButtonTapped(_ sender: Any) {
        timer.invalidate()
        startTimer()
    }

}

