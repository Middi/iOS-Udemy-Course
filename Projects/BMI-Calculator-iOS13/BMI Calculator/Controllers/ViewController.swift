//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

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
        
        let bmi = ((weight / pow(height, 2))*10).rounded()/10
        
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(bmi)
        
        self.present(secondVC, animated: true, completion: nil)
    }
}

