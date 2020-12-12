//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Richard Middleton on 11/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
