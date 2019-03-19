//
//  maxTextFieldLength.swift
//  bmiCalculatorUpdate1.1
//
//  Created by Raul Chakraborty on 1/16/19.
//  Copyright © 2019 Raul Chakraborty. All rights reserved.
//


/*
 Got this code from stackoverflow to set max character limit on text field.
 link: https://stackoverflow.com/questions/31363216/set-the-maximum-character-length-of-a-uitextfield-in-swift
 */

import UIKit
private var __maxLengths = [UITextField: Int]()
extension UITextField {
    @IBInspectable var maxLength: Int {
        get {
            guard let l = __maxLengths[self] else {
                return 150 // (global default-limit. or just, Int.max)
            }
            return l
        }
        set {
            __maxLengths[self] = newValue
            addTarget(self, action: #selector(fix), for: .editingChanged)
        }
    }
    @objc func fix(textField: UITextField) {
        let t = textField.text
        textField.text = t?.safelyLimitedTo(length: maxLength)
    }
}

extension String
{
    func safelyLimitedTo(length n: Int)->String {
        if (self.count <= n) {
            return self
        }
        return String( Array(self).prefix(upTo: n) )
    }
}

