//
//  textFieldViewController.swift
//  bmiCalculatorUpdate1.1
//
//  Created by Raul Chakraborty on 1/16/19.
//  Copyright © 2019 Raul Chakraborty. All rights reserved.
//

// source https://www.youtube.com/watch?v=_6eY1Ju1zU8
import UIKit

class textFieldViewController: UITextField {
//    override func caretRect(for position: UITextPosition) -> CGRect {
//        return CGRect.zero
//    }
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        
        if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            
            return false
        }
        return super.canPerformAction(action, withSender: sender)    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
