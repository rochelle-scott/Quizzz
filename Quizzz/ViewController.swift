//
//  ViewController.swift
//  Quizzz
//
//  Created by Rochelle Scott on 08/10/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    //Want more questions so need to create array. Need answers to validate questions, so need to create 2D array.
    let quiz = [
        ["Arsenal won the FA Cup 14 times.", "True"],
        ["40 teams compete within the Premier League.", "False"],
        ["Premier League team Burnley is also known by the nickname 'Toffees'.", "False"]
     ]
    
    //variable to keep track of which question the user is currently reading.
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        //This Constant has been created to check whether the user has pressed correct button/answer.
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        
        //Check to see if there chosen answer is correct.
        if userAnswer == actualAnswer {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
        
        questionNumber += 1 //questionNumber = questionNumber + 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    
}

