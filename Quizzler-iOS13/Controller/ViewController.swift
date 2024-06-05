//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let answer = userAnswer == "True" ? true : false;
        let userGotItRight = quizBrain.cheackAnswer(userAnswer: answer)
        
        if(userGotItRight == true) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    
//        if(index < qiz.count - 1){
//            index = index + 1;
//            Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
//        } else {
//            index = 0
//            questionLabel.text = "your correctAnswer = \(correctAnswer)"
//        }
        
       
        
    }
    
    @objc func updateUI() {
//        if(quizBrain.lastQuestion == true){
        scoreLabel.text = "Your Score = \(quizBrain.score)"
//        }else {
            questionLabel.text = quizBrain.getQuestionText()
//        }
            progressbar.progress = quizBrain.getProgress()

        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
      
    }
    
}

