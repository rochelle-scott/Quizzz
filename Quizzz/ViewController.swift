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
    
    //Want more questions so need to add array.
    let quiz = [
        "How many times has Arsenal won the FA Cup?",
        "How many teams compete within the Premier League?",
        "Which Premier League team is also known by the nickname 'Toffees'?"
     ]
    
    //variable to keep track of which q the user is currently reading
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionNumber += 1 //questionNumber = questionNumber + 1
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}

