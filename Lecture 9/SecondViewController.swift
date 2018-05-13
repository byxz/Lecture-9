//
//  SecondViewController.swift
//  Lecture 9
//
//  Created by Mac on 12.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var someSlider: UISlider!
    @IBOutlet var labelOfSlider: UILabel!
    @IBOutlet var buttonOfSlide: UIButton!
    
    @IBOutlet var buttonOfSldeConstraint: NSLayoutConstraint!
    
    @IBAction func hideSliderButton(_ sender: UIButton) {
        hiddenSlider()
    }
    @IBAction func someSliderAction(_ sender: UISlider) {
        updateValues()
    }
    @IBAction func updateButton(_ sender: UIButton) {
        someSlider.value = 0
        updateValues()
    }
    
    @IBAction func dissMissButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func hiddenSlider() {
        if !someSlider.isHidden {
            someSlider.alpha = 0
            UIView.animate(withDuration: 0.2, delay: 3, animations: {
                self.someSlider.alpha = 1
            })
        }
    }
    func updateValues() {
        labelOfSlider.text = "\(Int(someSlider.value))"
        buttonOfSldeConstraint.constant = CGFloat(someSlider.value)
    }
}
