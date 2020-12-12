//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes : [String : Int] = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var timer = Timer()
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        progressBar.progress = 0
    }
    
    
    func secondsToHoursMinutesSeconds (seconds : Int) -> (String) {
        let stringResult = "\((seconds % 3600) / 60)mins \((seconds % 3600) % 60)secs"
        return stringResult
    }
    
    
    func playSound() {
     
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        let time = eggTimes[hardness]! * 60
        var secondsRemaining = eggTimes[hardness]! * 60
        var secondsPassed = 0
        
        self.titleLabel.text = "\(self.secondsToHoursMinutesSeconds(seconds: secondsRemaining))"
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {
            Timer in
            if secondsPassed < time {
                secondsRemaining -= 1
                secondsPassed += 1
                
                if secondsRemaining == 0 {
                    self.titleLabel.text = "Done!"
                }
                else {
                    self.titleLabel.text = "\(self.secondsToHoursMinutesSeconds(seconds: secondsRemaining))"
                }
                
                let progress = Float((secondsPassed * 100) / time)
                self.progressBar.progress = progress / 100
            }
            else {
                self.playSound()
                self.progressBar.progress = 1.0
                Timer.invalidate()}
        }
    }
    
}

