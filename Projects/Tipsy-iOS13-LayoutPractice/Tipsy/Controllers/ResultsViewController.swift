//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var result: Double?
    var tip: Double?
    var people: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(format: "%.2f", result ?? 0.00)
        settingsLabel(tip: tip ?? 0.00, people: people ?? 0.00)
    }
    
    func settingsLabel(tip: Double, people: Double) {
        
        let splitBy = Int(people)
        let tipPercent = Int(tip * 100)
        settingsLabel.text = "Split between \(splitBy) people, with \(tipPercent)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
