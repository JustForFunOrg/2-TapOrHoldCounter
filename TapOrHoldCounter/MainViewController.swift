//
//  MainVC.swift
//  TapOrHoldCounter
//
//  Created by vmalikov on 1/28/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var tapOrHoldButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // reset counter
        resetButtonTapped(self)
        
        addGestureRecognizers()
    }
    
    func addGestureRecognizers() {
        let tapGesture = UITapGestureRecognizer(target: self, action: "tapOrHoldButtonTapped")
        let holdGesture = UILongPressGestureRecognizer(target: self, action: "tapOrHoldButtonHolded")
        tapGesture.numberOfTapsRequired = 1
        tapOrHoldButton.addGestureRecognizer(tapGesture)
        tapOrHoldButton.addGestureRecognizer(holdGesture)
    }
    
    func tapOrHoldButtonTapped() {
        increaseCounter()
    }
    
    func tapOrHoldButtonHolded() {
        increaseCounter()
    }
    
    @IBAction func resetButtonTapped(sender: AnyObject) {
        counterLabel.text = "0";
    }
    
    func increaseCounter() {
        guard let counterText = counterLabel.text else {
            return
        }
        
        if let currentNumber = Int(counterText) {
            counterLabel.text = String(currentNumber + 1)
        }
    }
}
