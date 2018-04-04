//
//  ViewController.swift
//  Body Mass Index
//
//  Created by Luis Franco R on 22/02/2018.
//  Copyright © 2018 Luis Franco R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func calculateBodyMassIndex(_ sender: UIButton) {
        
        let weightInput = Double(weight.text!)
        let heightInput = Double(height.text!)
        
        
        func bodyMassIndex (personsWeight: Double, personsHeight: Double) -> String {
            
            let bMi = personsWeight / pow(personsHeight, 2)
            let shortenedBMI = String(format: "%.2f", bMi)
            var interpretation = ""
            
            if bMi > 25 {
                interpretation = "You are overweight!"
            }
            else if bMi > 18.5 && bMi <= 24.9 {
                interpretation = "You are on point!"
            }
            else {
                interpretation = "You are underweight!"
            }
            return "Your BMI is \(shortenedBMI). \(interpretation)"
        }
        
        let bmiResult = bodyMassIndex(personsWeight: weightInput!, personsHeight: heightInput!)
        result.text = bmiResult
        
    }
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

