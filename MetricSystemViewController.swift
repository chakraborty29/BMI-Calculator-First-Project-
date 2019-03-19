//
//  MetricSystemViewController.swift
//  bmiCalculatorUpdate1.1
//
//  Created by Raul Chakraborty on 1/15/19.
//  Copyright © 2019 Raul Chakraborty. All rights reserved.
//

import UIKit

class MetricSystemViewController: UIViewController {

    @IBOutlet weak var heightInMeterstextField: UITextField!
    @IBOutlet weak var weightInKgTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var whatDoesYourBmiMean: UILabel!
    @IBOutlet weak var seeTheLinksTabForMoreInfo: UILabel!
    @IBOutlet weak var bmiStatusLabel: UILabel!
    @IBOutlet weak var tapOnScreen: UILabel!
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightInMeterstextField.resignFirstResponder()
        weightInKgTextField.resignFirstResponder()
        tapOnScreen.text = String("")
    }
    func heightInmetersConvertToFloat() -> Float {
        var heightInMeters : Float = 0
        var heightInMetersTextEntered : String = heightInMeterstextField.text!
        if let convertionToFloat = Float(heightInMetersTextEntered) {
            heightInMeters = convertionToFloat
        }
        return heightInMeters
    }
    func weightInKgConvertToFloat() -> Float {
        var weightInKg : Float = 0
        var weightInKgTextEntered : String = weightInKgTextField.text!
        if let conversionToFloat = Float(weightInKgTextEntered) {
            weightInKg = conversionToFloat
        }
        return weightInKg
    }
    func calculateBmiMetric() -> Float {
        let yourBmi : Float = (weightInKgConvertToFloat()) / pow(heightInmetersConvertToFloat(), 2)
        return yourBmi
    }
    func ifWrongInputMade() -> String {
        var inputStatus : String = ""
        var bmiStatusUpdate: String = ""
        var seeLinks : String = ""
        var greenLabel : String = ""
        if heightInmetersConvertToFloat() == Float(0) && weightInKgConvertToFloat() == Float(0) {
            bmiLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            bmiLabel.textColor = UIColor.red
            bmiLabel.text = String("Please Put Correct Info")
            inputStatus = bmiLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if heightInmetersConvertToFloat() == Float(0){
            bmiLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            bmiLabel.textColor = UIColor.red
            bmiLabel.text = String("Please Put Correct Height")
            inputStatus = bmiLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            seeLinks = seeTheLinksTabForMoreInfo.text!
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if weightInKgConvertToFloat() == Float(0) {
            bmiLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            bmiLabel.textColor = UIColor.red
            bmiLabel.text = String("Please Put Correct Weight")
            inputStatus = bmiLabel.text!
            bmiStatusLabel.text = String("")
            bmiStatusUpdate = bmiStatusLabel.text!
            seeTheLinksTabForMoreInfo.text = String("")
            seeLinks = seeTheLinksTabForMoreInfo.text!
            whatDoesYourBmiMean.text = String("")
            greenLabel = whatDoesYourBmiMean.text!
        } else if heightInmetersConvertToFloat() >= 12 {
            bmiLabel.font = UIFont(name: "Helvetica Neue", size: 16)
            bmiLabel.textColor = UIColor.red
            bmiLabel.text = String("Please Put Correct Inches")
            inputStatus = bmiLabel.text!
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
            bmiLabel.text = String(calculateBmiMetric())
            var bmiStatusUpdate: String = ""
            if calculateBmiMetric() > 30 {
                bmiLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
                bmiLabel.textColor = UIColor.red
                bmiStatusUpdate = bmiStatusLabel.text!
            } else if calculateBmiMetric() >= 25 && calculateBmiMetric() < 30 {
                bmiLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
                bmiLabel.textColor = UIColor.orange
                bmiStatusUpdate = bmiStatusLabel.text!
            } else if calculateBmiMetric() >= 18.5 && calculateBmiMetric() < 25 {
                bmiLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
                bmiLabel.textColor = UIColor.green
                bmiStatusUpdate = bmiStatusLabel.text!
            } else {
                bmiLabel.font = UIFont(name: "Apple Color Emoji", size: 20)
                bmiLabel.textColor = UIColor.orange
                bmiStatusUpdate = bmiStatusLabel.text!
            }
            bmiStatusUpdate = bmiLabel.text!
            return bmiStatusUpdate
        }
    func bmiStatus() -> String {
        whatDoesYourBmiMean.text = String("What Does Your BMI Mean?")
        seeTheLinksTabForMoreInfo.text = String("See The LINKS Tab For More Info")
        var bmiStatusUpdate: String = ""
        if calculateBmiMetric() > 30 {
            bmiStatusLabel.textColor = UIColor.red
            bmiStatusLabel.text = "Your BMI Means that You Are Obese"
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiMetric() >= 25 && calculateBmiMetric() < 30 {
            bmiStatusLabel.textColor = UIColor.orange
            bmiStatusLabel.text = "Your BMI Means that You Are Overweight"
            bmiStatusUpdate = bmiStatusLabel.text!
        } else if calculateBmiMetric() >= 18.5 && calculateBmiMetric() < 25 {
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
        bmiLabel.text = String("")
        whatDoesYourBmiMean.text = String("")
        bmiStatusLabel.text = String("")
        seeTheLinksTabForMoreInfo.text = String("")
        tapOnScreen.text = String("")
    }
    @IBAction func bmiMetricCalculate(_ sender: UIButton) {
        tapOnScreen.text = String("Tap On Screen!")
        bmiLabelUpdate()
        bmiStatus()
        ifWrongInputMade()
    }
}

