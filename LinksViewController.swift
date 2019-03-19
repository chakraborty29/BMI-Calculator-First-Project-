//
//  LinksViewController.swift
//  bmiCalculatorUpdate1.1
//
//  Created by Raul Chakraborty on 1/16/19.
//  Copyright © 2019 Raul Chakraborty. All rights reserved.
//

import UIKit

class LinksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    /*
     UIApplication.shared.open(URL(string:"")! as URL, options: [:], completionHandler: nil)
     
     This code I got off an youtube video which has the link of:
     https://www.youtube.com/watch?v=L367oxaDR6s
     and I searched this to click a button to go to an URL page which I did not know how to do by myself
 */


    
    @IBAction func clickForMoreInfoButtonPressed(_ sender: UIButton) {
        if sender.tag == 4 {
            UIApplication.shared.open(URL(string:"http://www.heart.org/en/healthy-living/healthy-eating/losing-weight/extreme-obesity-and-what-you-can-do")! as URL, options: [:], completionHandler: nil)
            
            
        } else if sender.tag == 3 {
            
            UIApplication.shared.open(URL(string:"https://www.niddk.nih.gov/health-information/weight-management/health-risks-overweight")! as URL, options: [:], completionHandler: nil)
            
        } else if sender.tag == 2 {
            
            UIApplication.shared.open(URL(string:"https://www.fitnessblender.com/")! as URL, options: [:], completionHandler: nil)
            
        } else {
            
            UIApplication.shared.open(URL(string:"https://www.medicalnewstoday.com/articles/321612.php")! as URL, options: [:], completionHandler: nil)
            
        }
    }
    
    
    
}




