//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var score: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    func updateUI() {
        questionText.text = quizBrain.getQuizText()
        resetBtn()
        updateProgressBar()
        updateScore()
    }
    
    func updateScore() {
        score.text =  "Score: \(quizBrain.updateScore())"
    }
    func resetBtn() {
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (timer) in
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
        }
    }
    
    func updateProgressBar() {
        progressBar.progress = quizBrain.getProgress()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if(quizBrain.CheckAnswer(sender.currentTitle!)) {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.updateQuestionNumber()
        
        updateUI()
        
    }
}

