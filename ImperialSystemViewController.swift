//
//  ImperialSystemViewController.swift
//  bmiCalculatorUpdate1.1
//
//  Created by Raul Chakraborty on 1/15/19.
//  Copyright © 2019 Raul Chakraborty. All rights reserved.
//
// Some is written by xCode
import UIKit

class ImperialSystemViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var heightInFeetTextField: UITextField!
    @IBOutlet weak var heightInIncheesTextField: UITextField!
    @IBOutlet weak var weightInLbsTextField: UITextField!
    @IBOutlet weak var finalBmiImperialLabel: UILabel!
    @IBOutlet weak var bmiStatusLabel: UILabel!
    @IBOutlet weak var whatDoesYourBmiMean: UILabel!
    @IBOutlet weak var seeTheLinksTabForMoreInfo: UILabel!
    @IBOutlet weak var tapOnScreen: UILabel!
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightInFeetTextField.resignFirstResponder()
        heightInIncheesTextField.resignFirstResponder()
        weightInLbsTextField.resignFirstResponder()
        tapOnScreen.text = String("")
    }
    func heighInFeetConvertToFloat() -> Float {
        var heightInFeet : Float = 0
        var heightInFeetTextEntered : String = heightInFeetTextField.text!
        if let convertionToFloat = Float(heightInFeetTextEntered) {
            heightInFeet = convertionToFloat
        }
        return heightInFeet
    }
    func heighInInchesConvertToFloat() -> Float {
        var heightInInches : Float = 0
        var heightInInchesTextEntered : String = heightInIncheesTextField.text!
        if let convertionToFloat = Float(heightInInchesTextEntered) {
            heightInInches = convertionToFloat
        }
        return heightInInches
    }
    func weightInLbsConvertToFloat() -> Float {
        var weightInLbs : Float = 0
        var weightInLbsTextEntered : String = weightInLbsTextField.text!
        if let conversionToFloat = Float(weightInLbsTextEntered) {
            weightInLbs = conversionToFloat
        }
        return weightInLbs
    }
    func heightTotal() -> Float {
        let total : Float = (heighInFeetConvertToFloat() * 12) + heighInInchesConvertToFloat()
        return total
    }
    func calculateBmiImperial() -> Float {
        let yourBmi : Float = ((weightInLbsConvertToFloat()) / pow(heightTotal(), 2)) * 703
        return yourBmi
    }
    func ifWrongInputMade() -> String {
        var inputStatus : String = ""
        var bmiStatusUpdate: String = ""
        var seeLinks : String = ""
        var greenLabel : String = ""
        if heighInFeetConvertToFloat() == Float(0) && heighInInchesConvertToFloat() == Float(0) && weightInLbsConvertToFloat() == Float(0) {
            finalBmiImperialLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            finalBmiImperialLabel.textColor = UIColor.red
            finalBmiImperialLabel.text = String("Please Put Correct Info")
            inputStatus = finalBmiImperialLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if (heighInFeetConvertToFloat() == Float(0) && heighInInchesConvertToFloat() == Float(0)){
            finalBmiImperialLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            finalBmiImperialLabel.textColor = UIColor.red
            finalBmiImperialLabel.text = String("Please Put Correct Height")
            inputStatus = finalBmiImperialLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            seeLinks = seeTheLinksTabForMoreInfo.text!
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if weightInLbsConvertToFloat() == Float(0) {
            finalBmiImperialLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            finalBmiImperialLabel.textColor = UIColor.red
            finalBmiImperialLabel.text = String("Please Put Correct Weight")
            inputStatus = finalBmiImperialLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            seeLinks = seeTheLinksTabForMoreInfo.text!
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if heighInInchesConvertToFloat() >= 12 {
            finalBmiImperialLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            finalBmiImperialLabel.textColor = UIColor.red
            finalBmiImperialLabel.text = String("Please Put Correct Inches")
            inputStatus = finalBmiImperialLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            seeLinks = seeTheLinksTabForMoreInfo.text!
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        }
        return inputStatus
        return bmiStatusUpdate
        return seeLinks
        return greenLabel
    }
    func bmiLabelUpdate() -> String {
        finalBmiImperialLabel.text = String(calculateBmiImperial())
        var bmiStatusUpdate: String = ""
        if calculateBmiImperial() > 30 {
            finalBmiImperialLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
            finalBmiImperialLabel.textColor = UIColor.red
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiImperial() >= 25 && calculateBmiImperial() < 30 {
            finalBmiImperialLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
            finalBmiImperialLabel.textColor = UIColor.orange
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiImperial() >= 18.5 && calculateBmiImperial() < 25 {
            finalBmiImperialLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
            finalBmiImperialLabel.textColor = UIColor.green
            bmiStatusUpdate = bmiStatusLabel.text!
        } else {
            finalBmiImperialLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
            finalBmiImperialLabel.textColor = UIColor.orange
            bmiStatusUpdate = bmiStatusLabel.text!
        }
        bmiStatusUpdate = finalBmiImperialLabel.text!
        return bmiStatusUpdate
    }
    func bmiStatus() -> String {
        whatDoesYourBmiMean.text = String("What Does Your BMI Mean?")
        seeTheLinksTabForMoreInfo.text = String("See The LINKS Tab For More Info")
        var bmiStatusUpdate: String = ""
        if calculateBmiImperial() > 30 {
            bmiStatusLabel.textColor = UIColor.red
            bmiStatusLabel.text = "Your BMI Means that You Are Obese"
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiImperial() >= 25 && calculateBmiImperial() < 30 {
            bmiStatusLabel.textColor = UIColor.orange
            bmiStatusLabel.text = "Your BMI Means that You Are Overweight"
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiImperial() >= 18.5 && calculateBmiImperial() < 25 {
            bmiStatusLabel.textColor = UIColor.green
            bmiStatusLabel.text = "Your BMI Means that You Are Normal Weight"
            bmiStatusUpdate = bmiStatusLabel.text!
        } else {
            bmiStatusLabel.textColor = UIColor.orange
            bmiStatusLabel.text = "Your BMI Means that You Are Underweight"
            bmiStatusUpdate = bmiStatusLabel.text!
        }
        return bmiStatusUpdate
    }
        override func viewDidLoad() {
        super.viewDidLoad()
        finalBmiImperialLabel.text = String("")
        whatDoesYourBmiMean.text = String("")
        bmiStatusLabel.text = String("")
        seeTheLinksTabForMoreInfo.text = String("")
        tapOnScreen.text = String("")        
    }
@IBAction func bmiImperialCalculatePressed(_ sender: UIButton) {
        tapOnScreen.text = String("Tap On Screen!")
        bmiLabelUpdate()
        bmiStatus()
        ifWrongInputMade()
    }
}

