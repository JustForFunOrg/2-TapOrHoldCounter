//
//  MainVC.swift
//  TapOrHoldCounter
//
//  Created by vmalikov on 1/28/16.
//  Copyright © 2016 justForFun. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetTapped(self)
    }
    
    @IBAction func resetTapped(sender: AnyObject) {
        counter.text = "0";
    }
    
    @IBAction func onTapOrHold(sender: AnyObject) {
        guard let counterText = counter.text else {
            return
        }
        
        if let currentNumber = Int(counterText) {
            counter.text = String(currentNumber + 1)
        }
    }
}
