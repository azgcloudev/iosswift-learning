//
//  CardSelectionVC.swift
//  CardWorkout-Programmatic
//
//  Created by Aldair Zamora on 27/5/23.
//

import UIKit

class CardSelectionVC: UIViewController {

    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .systemRed, title: "Stop")
    let restartButton = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton = CWButton(backgroundColor: .systemBlue, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureUI()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        // constraints
        NSLayoutConstraint.activate([
            // always at least 4 constraints
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
        ])
    }
    
    func configureStopButton() {
        view.addSubview(stopButton)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    
    func configureRestartButton() {
        view.addSubview(restartButton)
        
        NSLayoutConstraint.activate([
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.heightAnchor.constraint(equalToConstant: 50),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        
        // create actions
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 20)
        ])
    }
    
    @objc func presentRulesVC() {
        present(RulesVC(), animated: true)
    }
}
