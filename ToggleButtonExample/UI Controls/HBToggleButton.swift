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
    
    fileprivate func setButtonValues(_ bool: Bool) {
        
        let color = bool ? Colors.toggolButton : .clear
        let title = bool ? "Button is On" : "Button is Off"
        let titleColor = bool ? . white : Colors.toggolButton
        
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
    }
}
