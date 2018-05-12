//
//  ViewController.swift
//  Lecture 9
//
//  Created by Mac on 12.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelOfSwitch: UILabel!
    @IBAction func someSwitch(_ sender: UISwitch) {
        if sender.isOn {
            labelOfSwitch.text = "Switch включен"
            nextButton.isHidden = false
        } else {
            labelOfSwitch.text = "Switch выключен"
            nextButton.isHidden = true
        }
    }
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.isHidden = true
        
    }
}

