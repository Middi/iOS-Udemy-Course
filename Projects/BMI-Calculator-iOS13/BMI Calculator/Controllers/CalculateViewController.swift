//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

var calcBrain = CalculatorBrain()

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value = 1.50
        weightSlider.value = 100
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let value = (sender.value*100).rounded()/100
        heightLabel.text = String(value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let value = Int(sender.value)
        weightLabel.text = String(value) + "kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calcBrain.getBMI(weight: weight, height: height)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calcBrain.getBMIValue()
            destinationVC.advice = calcBrain.getAdvice()
            destinationVC.color = calcBrain.getColor()
        }
    }
}

