//
//  CalculatoBrain.swift
//  BMI Calculator
//
//  Created by Richard Middleton on 11/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let decimal = (bmi?.value ?? 0 * 10).rounded()/10
        return String(decimal)
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    mutating func getBMI(weight: Float, height: Float) {
        let bmiValue = weight / (height * height)
    
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }
        else if bmiValue > 24.9 {
            bmi = BMI(value: bmiValue, advice: "Get running fatty", color: #colorLiteral(red: 0.6629838943, green: 0, blue: 0.08394845575, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "You're doing alright", color: #colorLiteral(red: 0.9466682076, green: 0.7868357897, blue: 0.2059229314, alpha: 1))
        }
       
    }
}
