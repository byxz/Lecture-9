//
//  ViewController.swift
//  Lecture 9
//
//  Created by Mac on 12.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelOfSwitch: UILabel!
    @IBAction func someSwitch(_ sender: UISwitch) {
        
        let isOn = sender.isOn
        labelOfSwitch.text = "Switch \(isOn)"
        nextButton.isHidden = !isOn
    }
    @IBOutlet var someSwitch: UISwitch!
    
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isHidden = !someSwitch.isOn
        
    }
}

