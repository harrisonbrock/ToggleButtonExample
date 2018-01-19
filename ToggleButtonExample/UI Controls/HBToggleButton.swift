//
//  ToggleButton.swift
//  ToggleButtonExample
//
//  Created by Harrison Brock on 1/15/18.
//  Copyright © 2018 Harrison Brock. All rights reserved.
//

import UIKit

class HBToggleButton: UIButton {

    var isOn = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton() {
        
        layer.borderWidth = 2.0
        layer.borderColor = Colors.toggolButton.cgColor
        layer.cornerRadius = frame.size.height / 2
        
        // set the title color using our constant
        setTitleColor(Colors.toggolButton, for: .normal)
        addTarget(self, action: #selector(HBToggleButton.buttonPressed), for: .touchUpInside)
    }
    
    
    @objc func buttonPressed() {
        activateButton(bool: !isOn)
    }
    

    func activateButton(bool: Bool) {
        isOn = bool
        setButtonValues(bool)
    }
    
    // set button values
    fileprivate func setButtonValues(_ bool: Bool) {
        
        // this is the button background color base on the bool
        let color = bool ? Colors.toggolButton : .clear
        // this is the button title base on the bool
        let title = bool ? "Following" : "Follow"
        // this is the button title color base on the bool
        let titleColor = bool ? . white : Colors.toggolButton
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }
}
